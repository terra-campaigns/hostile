require 'json'

module Jekyll
  module LlmContentFilter
    def raw_markdown(page)
      return "" unless page['path']
      
      begin
        content = File.read(page['path'], encoding: 'utf-8')
        
        # Strip YAML front matter
        if content =~ /\A---\s*\n.*?\n---\s*\n/m
          content = content.sub(/\A---\s*\n.*?\n---\s*\n/m, '')
        end
        
        # Remove liquid includes, comments, and other structural jekyll tags that add noise
        content = content.gsub(/{%\s*include\s+.*?%}/, '')
        content = content.gsub(/{%\s*comment\s*%}.*?{%\s*endcomment\s*%}/m, '')
        
        # Remove Kramdown IALs like {: .text-right }
        content = content.gsub(/\{:\s*\..*?\s*\}/, '')
        
        content.strip
      rescue
        ""
      end
    end

    def dump_specific_skill(input, skill_name)
      base_dir = Dir.pwd
      
      # 1. Local skill
      skill_file = File.join(base_dir, ".agents", "skills", skill_name, "SKILL.md")
      return File.read(skill_file, encoding: 'utf-8').strip if File.exist?(skill_file)

      # 2. Check skills.json
      skills_json = File.join(base_dir, ".agents", "skills.json")
      if File.exist?(skills_json)
        begin
          cfg = JSON.parse(File.read(skills_json))
          (cfg['entries'] || []).each do |entry|
            raw_path = entry['path']
            next unless raw_path
            target_dir = if raw_path.start_with?('~/')
                           File.expand_path(raw_path)
                         elsif raw_path.start_with?('/')
                           raw_path
                         else
                           File.expand_path(File.join(base_dir, raw_path))
                         end
            candidate = File.join(target_dir, skill_name, "SKILL.md")
            return File.read(candidate, encoding: 'utf-8').strip if File.exist?(candidate)
          end
        rescue => e
          warn "Could not resolve skill #{skill_name} from skills.json: #{e.message}"
        end
      end

      ""
    end

    def dump_main_agent_rules(input)
      agents_md = File.join(Dir.pwd, ".agents", "AGENTS.md")
      if File.exist?(agents_md)
        File.read(agents_md, encoding: 'utf-8').strip
      else
        ""
      end
    end

    def dump_vbt_context(input)
      output = []
      vbt_dir = File.join(Dir.pwd, "campaigns", "vbt-problemen")
      
      if Dir.exist?(vbt_dir)
        Dir.glob(File.join(vbt_dir, "*.md")).sort.each do |file|
          next if File.basename(file) == "index.md"
          next if File.basename(file) == "gem-instructions.md"
          next if File.basename(file) == "gem-context.md"
          
          content = File.read(file, encoding: 'utf-8')
          
          # Strip YAML front matter for cleaner output
          if content =~ /\A---\s*\n.*?\n---\s*\n/m
            content = content.sub(/\A---\s*\n.*?\n---\s*\n/m, '')
          end
          
          output << "<hr>"
          output << "## FILE: #{File.basename(file)}"
          output << ""
          output << content.strip
          output << ""
        end
      end
      
      output.join("\n")
    end
  end
end

Liquid::Template.register_filter(Jekyll::LlmContentFilter)
