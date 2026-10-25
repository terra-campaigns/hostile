# frozen_string_literal: true

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
  end
end

Liquid::Template.register_filter(Jekyll::LlmContentFilter)
