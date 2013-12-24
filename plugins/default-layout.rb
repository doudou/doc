module Rock
    module Jekyll
        class DefaultTemplates < ::Jekyll::Generator
            def generate(site)
                defaults = site.config['default_layouts'].map { |rx_str, layout_name| [Regexp.new("^#{rx_str}$"), layout_name] }
                site.pages.each do |p|
                    if !p.data['layout']
                        _, layout_name = defaults.find { |rx, _| rx === p.path }
                        p.data['layout'] = layout_name
                    end
                end
            end
        end
    end
end
