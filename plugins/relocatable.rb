require 'pathname'
module Rock
    module Jekyll
        class Relocatable < Liquid::Tag
            attr_reader :target_path

            def initialize(tag_name, text, tokens)
                super
                @target_path = text.strip
            end

            def render(context)
                page_url   = Pathname.new(context.environments.first['page']['url'])
                target_url = Pathname.new(target_path)
                target_url.relative_path_from(page_url.dirname).to_s
            end
        end
    end
end
Liquid::Template.register_tag('relocatable', Rock::Jekyll::Relocatable)
