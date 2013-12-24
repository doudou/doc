module Rock
    module Jekyll
        class Menu < Liquid::Tag
            attr_reader :group

            def initialize(tag_name, text, tokens)
                super
                @group = text.strip
            end

            def render(context)
                site = context.environments.first['site']
                pages = site['pages'].find_all { |p| p.data['group'] == group }
                links = pages.map do |page|
                    page_url   = Pathname.new(context.environments.first['page']['url'])
                    target_url = Pathname.new(page.url)
                    path = target_url.relative_path_from(page_url.dirname).to_s
                    title = page.data['menu_title'] || page.data['title']
                    ["<li class=\"level1\"><a href=\"#{path}\">#{title}</a></li>", Integer(page.data['sort_info'] || 1000000)]
                end
                links.sort_by(&:last).map(&:first).join("")
            end
        end
    end
end
Liquid::Template.register_tag('menu', Rock::Jekyll::Menu)

