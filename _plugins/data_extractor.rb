require 'open3'
require 'uri'
require 'pathname'

module Jekyll
  class DataExtractorGenerator < Generator
    safe true
    priority :lowest # Run after standard processing to not interfere with others

    def generate(site)
      lastmod = {}
      markdown_links = Hash.new { |h, k| h[k] = [] }
      gallery_links = Hash.new { |h, k| h[k] = [] }

      # Prepare gallery image list like the original python script: collect_gallery_images
      gallery_dir = "imgs/gallery"
      all_gallery_images = {}
      if Dir.exist?(gallery_dir)
        Dir.glob(File.join(gallery_dir, "**/*")).each do |file|
          next if File.directory?(file) || File.basename(file).start_with?('.')
          # Normalize path
          all_gallery_images[file] = []
        end
      end

      # Find all markdown files (similar to the python script)
      # We ignore _site and vendor to avoid processing built/external files
      md_files = Dir.glob("**/*.md").reject { |f| f.start_with?("_site/") || f.start_with?("vendor/") || f.start_with?(".git/") || f.start_with?("_plugins/") }

      md_files.each do |file_path|
        # 1. Last modified
        # Use git log to get the timestamp. Fallback to File.mtime if not tracked.
        git_date, status = Open3.capture2("git log -1 --format=%at -- \"#{file_path}\"")
        timestamp = if status.success? && !git_date.strip.empty?
                      git_date.strip.to_i
                    else
                      File.mtime(file_path).to_i
                    end
        # Format as '%Y-W%U'
        lastmod[file_path] = Time.at(timestamp).strftime('%Y-W%U')

        # Read file content for links and images
        content = begin
                    File.read(file_path, encoding: 'utf-8')
                  rescue
                    ""
                  end

        # 2. Extract Links
        # Pattern: (?<!\!)\[(.*?)\]\((.*?)\)
        # We simulate the negative lookbehind by finding all standard links
        # `scan` on `/(?<!\!)\[(.*?)\]\((.*?)\)/` works in Ruby!
        content.scan(/(?<!\!)\[(.*?)\]\((.*?)\)/).each do |text, url|
          next if text.include?("{{") || text.include?("}}") || text.include?("+") || text.include?("\"")
          next if url.include?("{{") || url.include?("}}") || url.include?("+") || url.include?("\"")

          is_internal = !url.start_with?("http://", "https://")
          if is_internal
            dir = File.dirname(file_path)
            clean_url = url.split('#').first
            next if clean_url.nil? || clean_url.empty?
            resolved_path = Pathname.new(dir).join(clean_url).cleanpath.to_s
            full_url = resolved_path
            favicon_url = nil
          else
            full_url = url
            begin
              uri = URI.parse(url)
              favicon_url = "#{uri.scheme}://#{uri.host}/favicon.ico"
            rescue
              favicon_url = nil
            end
          end

          markdown_links[file_path] << {
            "text" => text,
            "url" => full_url,
            "is_internal" => is_internal,
            "direction" => "outbound",
            "favicon" => favicon_url
          }

          if is_internal
            markdown_links[full_url] << {
              "text" => text,
              "url" => file_path,
              "is_internal" => true,
              "direction" => "inbound"
            }
          end
        end

        # 3. Extract Images
        # Find images in frontmatter
        image_targets = []
        if content =~ /\A---\s*\n(.*?)\n---\s*\n/m
          front_matter = Regexp.last_match(1)
          collecting_images = false
          front_matter.each_line do |line|
            line_str = line.rstrip
            stripped = line_str.strip
            
            if collecting_images
              if stripped.start_with?("- ")
                image_path = stripped[2..-1].strip
                image_targets << image_path unless image_path.empty?
                next
              end
              if line_str.start_with?(" ") || line_str.start_with?("\t") || stripped.empty?
                next
              end
              collecting_images = false
            end

            if stripped.start_with?("image:")
              image_path = stripped.split(":", 2)[1].strip
              image_targets << image_path unless image_path.empty?
            elsif stripped.start_with?("images:")
              collecting_images = true
              inline_value = stripped.split(":", 2)[1].strip
              if inline_value.start_with?("[") && inline_value.end_with?("]")
                items = inline_value[1...-1].split(",")
                items.each { |item| image_targets << item.strip unless item.strip.empty? }
                collecting_images = false
              elsif !inline_value.empty?
                image_targets << inline_value
                collecting_images = false
              end
            end
          end
        end

        # Find markdown images: !\[(.*?)\]\((.*?)\)
        content.scan(/!\[.*?\]\((.*?)\)/).each do |match|
          image_targets << match[0]
        end

        image_targets.each do |target|
          next if target.include?("{{") || target.include?("}}") || target.include?("+") || target.include?("\"")
          next if target.start_with?("http://", "https://")

          dir = File.dirname(file_path)
          clean_target = target.split('#').first
          next if clean_target.nil? || clean_target.empty?
          
          clean_target = clean_target.gsub('%20', ' ')

          resolved_path = Pathname.new(dir).join(clean_target).cleanpath.to_s
          
          if all_gallery_images.key?(resolved_path) && !all_gallery_images[resolved_path].include?(file_path)
            all_gallery_images[resolved_path] << file_path
          end
        end
      end

      # Sort lastmod
      sorted_lastmod = lastmod.sort_by { |_, v| v }.reverse.to_h

      # Sort gallery_links: put those with 0 files first, then alphabetically
      ordered_gallery_images = all_gallery_images.sort_by { |k, v| [v.empty? ? 0 : 1, k] }.to_h

      # Inject into Jekyll site.data
      site.data['lastmod'] = sorted_lastmod
      site.data['markdown_links'] = { 'file' => markdown_links }
      site.data['gallery_links'] = { 'file' => ordered_gallery_images }
      
      Jekyll.logger.info "DataExtractor:", "Successfully extracted links, lastmod, and gallery mappings into memory."
    end
  end
end
