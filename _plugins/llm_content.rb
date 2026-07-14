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

    def dump_agents(input)
      output = []
      base_dir = Dir.pwd
      
      # Main AGENTS.md
      agents_md = File.join(base_dir, ".agents", "AGENTS.md")
      if File.exist?(agents_md)
        output << "================================================================================"
        output << "AGENT INSTRUCTIONS (AGENTS.md)"
        output << "================================================================================"
        output << File.read(agents_md, encoding: 'utf-8').strip
        output << ""
      end
      
      # Skills
      skills_dir = File.join(base_dir, ".agents", "skills")
      if Dir.exist?(skills_dir)
        output << "================================================================================"
        output << "AGENT SKILLS"
        output << "================================================================================"
        Dir.glob(File.join(skills_dir, "**", "SKILL.md")).sort.each do |skill_file|
          skill_name = File.basename(File.dirname(skill_file))
          output << "--------------------------------------------------------------------------------"
          output << "SKILL: #{skill_name}"
          output << "--------------------------------------------------------------------------------"
          output << File.read(skill_file, encoding: 'utf-8').strip
          output << ""
        end
      end
      
      output.join("\n")
    end
  end
end

Liquid::Template.register_filter(Jekyll::LlmContentFilter)
