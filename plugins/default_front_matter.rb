module Rock
    module Jekyll
        class DefaultFrontMatter < ::Jekyll::Generator
            def generate(site)
                defaults = site.config['default_front_matter'].map { |rx_str, front_matter| [Regexp.new("^#{rx_str}$"), front_matter] }
                site.pages.each do |p|
                    _, front_matter = defaults.find { |rx, _| rx === p.path }
                    if front_matter
                        p.data.merge!(front_matter) { |_, old, _| old }
                    end
                end
            end
        end
    end
end
