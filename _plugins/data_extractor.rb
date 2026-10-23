require 'open3'
require 'uri'
require 'pathname'
require 'yaml'
require 'json'
require 'digest'
require 'time'
require 'fileutils'

# Ensure UTF-8 is default external/internal encoding even in bare GUI or subshell environments
Encoding.default_external = Encoding::UTF_8 if defined?(Encoding)
Encoding.default_internal = Encoding::UTF_8 if defined?(Encoding)

module OudeMechanismen
  class DataExtractor
    def self.extract(base_dir = Dir.pwd, write_catalog: true)
      lastmod = {}
      markdown_links = Hash.new { |h, k| h[k] = [] }
      gallery_links = Hash.new { |h, k| h[k] = [] }

      gallery_dir = File.join(base_dir, "imgs/gallery")
      all_gallery_images = {}
      if Dir.exist?(gallery_dir)
        Dir.glob(File.join(gallery_dir, "**/*")).each do |file|
          next if File.directory?(file) || File.basename(file).start_with?('.')
          rel_img = Pathname.new(file).relative_path_from(Pathname.new(base_dir)).to_s
          all_gallery_images[rel_img] = []
        end
      end

      # Find markdown files, ignoring generated, build, and hidden directories
      Dir.chdir(base_dir) do
        md_files = Dir.glob("**/*.md").reject do |f|
          f.start_with?("_site/") ||
            f.start_with?("vendor/") ||
            f.start_with?(".git/") ||
            f.start_with?("_plugins/") ||
            f.start_with?(".agents/")
        end

        # Track internal link connections for links_out and links_in
        internal_outbound = Hash.new { |h, k| h[k] = [] }
        internal_inbound = Hash.new { |h, k| h[k] = [] }

        md_files.each do |file_path|
          # 1. Last modified
          git_date, status = Open3.capture2("git log -1 --format=%at -- \"#{file_path}\"")
          timestamp = if status.success? && !git_date.strip.empty?
                        git_date.strip.to_i
                      else
                        File.mtime(file_path).to_i
                      end
          lastmod[file_path] = Time.at(timestamp).strftime('%Y-W%U')

          content = begin
                      File.read(file_path, encoding: 'utf-8')
                    rescue
                      ""
                    end

          # 2. Extract Links
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

              internal_outbound[file_path] << full_url unless internal_outbound[file_path].include?(full_url)
              internal_inbound[full_url] << file_path unless internal_inbound[full_url].include?(file_path)
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
          image_targets = []
          if content =~ /\A---\s*\n(.*?)\n---\s*\n/m
            front_matter_raw = Regexp.last_match(1)
            collecting_images = false
            front_matter_raw.each_line do |line|
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

        # Sort outputs
        sorted_lastmod = lastmod.sort_by { |_, v| v }.reverse.to_h
        ordered_gallery_images = all_gallery_images.sort_by { |k, v| [v.empty? ? 0 : 1, k] }.to_h

        # 4. Build Tier 1 Semantic Catalogue
        catalog_config_path = File.join(base_dir, ".agents/context/tier1_sources.yml")
        include_paths = ["campaigns", "directory", "systems", "statblocks", "trading"]
        exclude_paths = ["_inklings.md", "_TODO.md", "_notions.md"]
        if File.exist?(catalog_config_path)
          begin
            cfg = YAML.safe_load(File.read(catalog_config_path, encoding: 'utf-8'), permitted_classes: [Date, Time]) || {}
            include_paths = (cfg['include_paths'] || include_paths).map { |p| p.chomp('/') }
            exclude_paths = (cfg['exclude_paths'] || exclude_paths).map { |p| p.chomp('/') }
          rescue => e
            warn "Could not read tier1_sources.yml: #{e.message}"
          end
        end

        catalog_entries = []
        md_files.each do |file_path|
          # Match against tier1_sources.yml allowlist
          included = include_paths.any? { |inc| file_path == inc || file_path.start_with?("#{inc}/") }
          excluded = exclude_paths.any? { |exc| file_path == exc || file_path.start_with?("#{exc}/") }
          next unless included && !excluded

          content = begin
                      File.read(file_path, encoding: 'utf-8')
                    rescue
                      ""
                    end

          fm = {}
          body = content
          if content =~ /\A---\s*\n(.*?)\n---\s*\n(.*)/m
            fm_raw = Regexp.last_match(1)
            body = Regexp.last_match(2)
            begin
              fm = YAML.safe_load(fm_raw, permitted_classes: [Date, Time]) || {}
            rescue
              fm = {}
            end
          end

          # Extract clean first prose paragraph for summary
          clean_body = body.gsub(/{%\s*comment\s*%}.*?{%\s*endcomment\s*%}/m, '')
          clean_body = clean_body.gsub(/{%.*?%}/m, '').gsub(/\{\{.*?\}\}/m, '')
          clean_body = clean_body.gsub(/\{:\s*\..*?\s*\}/, '')
          clean_body = clean_body.lines.reject { |l| l =~ /^\s*#/ }.join
          paragraphs = clean_body.split(/\n\s*\n/).map(&:strip).reject(&:empty?)
          first_p = paragraphs.find { |p| !p.start_with?("```") && !p.start_with?("---") }
          summary = first_p ? first_p.gsub(/\s+/, ' ').strip : nil

          catalog_entries << {
            "path" => file_path,
            "title" => fm['title'] || File.basename(file_path, '.md'),
            "type" => fm['type'] || "misc",
            "parent" => fm['parent'],
            "role" => fm['role'],
            "status" => fm['status'],
            "region" => fm['region'] || fm['location'],
            "nav_order" => fm['nav_order'] ? fm['nav_order'].to_s : nil,
            "summary" => summary,
            "links_out" => internal_outbound[file_path].sort,
            "links_in" => internal_inbound[file_path].sort,
            "lastmod" => lastmod[file_path],
            "sha" => Digest::SHA256.hexdigest(content)[0..7],
            "tier" => 1
          }
        end

        out_dir = File.join(base_dir, ".agents/context")
        catalog_file = File.join(out_dir, "catalog.json")

        sorted_entries = catalog_entries.sort_by { |e| [e["type"] || "", e["title"] || ""] }

        # Check existing catalog to avoid touching file when content has not changed
        should_write = true
        generated_time = Time.now.iso8601
        if File.exist?(catalog_file)
          begin
            existing = JSON.parse(File.read(catalog_file, encoding: 'utf-8'))
            if existing["entries"] == sorted_entries
              should_write = false
              generated_time = existing["generated"] || generated_time
            end
          rescue
            should_write = true
          end
        end

        catalog_data = {
          "generated" => generated_time,
          "tier" => 1,
          "total_entries" => sorted_entries.length,
          "entries" => sorted_entries
        }

        if write_catalog && should_write
          FileUtils.mkdir_p(out_dir) unless Dir.exist?(out_dir)
          File.write(
            catalog_file,
            JSON.pretty_generate(catalog_data),
            encoding: 'utf-8'
          )
        end

        {
          lastmod: sorted_lastmod,
          markdown_links: markdown_links,
          gallery_links: ordered_gallery_images,
          catalog: catalog_data
        }
      end
    end
  end
end

if defined?(Jekyll) && defined?(Jekyll::Generator)
  module Jekyll
    class DataExtractorGenerator < Generator
      safe true
      priority :lowest

      def generate(site)
        result = OudeMechanismen::DataExtractor.extract(site.source, write_catalog: true)
        site.data['lastmod'] = result[:lastmod]
        site.data['markdown_links'] = { 'file' => result[:markdown_links] }
        site.data['gallery_links'] = { 'file' => result[:gallery_links] }

        Jekyll.logger.info "DataExtractor:", "Extracted links, gallery, and refreshed .agents/context/catalog.json (#{result[:catalog]['total_entries']} Tier 1 entries)."
      end
    end
  end
end

if __FILE__ == $0
  puts "Running standalone OudeMechanismen::DataExtractor..."
  result = OudeMechanismen::DataExtractor.extract(Dir.pwd, write_catalog: true)
  puts "Successfully extracted data and wrote #{result[:catalog]['total_entries']} Tier 1 entries to .agents/context/catalog.json."
end
