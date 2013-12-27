require_relative 'relocatable'
module Rock
    module Jekyll
        # Tag to generate the path to the description of a given package
        class Package < Relocatable
            def initialize(tag_name, text, tokens)
                super(tag_name, "/pkg/#{text.strip}/index.html", tokens)
            end
        end

        # Tag to generate the path to the description of a given type
        #
        # The type must be given in Typelib normal form
        class Type < Relocatable
            def initialize(tag_name, text, tokens)
                text = text.strip
                if text[0, 1] != "/"
                    text = "/#{text}"
                end
                super(tag_name, "/types#{text.strip.gsub(/[^\w]/, "_")}.html", tokens)
            end
        end

        # Tag to generate the path to the description of an oroGen task
        class Task < Relocatable
            def initialize(tag_name, text, tokens)
                super(tag_name, "/tasks/#{text.strip}.html", tokens)
            end
        end

        # Tag to generate the path to a ticket on the Rock bug tracker
        class Ticket < Relocatable
            attr_reader :ticket_id

            def initialize(tag_name, text, tokens)
                @ticket_id = Integer(text.strip)
                super
            end

            def render(context)
                "http://rock.opendfki.de/tickets/#{ticket_id}"
            end
        end

        # Tag to generate the path to the API of a given package
        class API < Relocatable
            def initialize(tag_name, package, tokens)
                package = package.strip
                if package.empty?
                    super(tag_name, "", tokens)
                else
                    super(tag_name, "/api/#{package}/index.html", tokens)
                end
            end

            def render(context)
                if target_path.empty?
                    default_pkg = context.environments.first['page']['pkg']
                    if !default_pkg
                        raise ArgumentError, "the package for #{self.class} should either explicitly given or given as the pkg attribute in the page's front matter"
                    end
                    @target_path = "/api/#{default_pkg}/index.html"
                end
                super
            end
        end

        # Tag to generate the path to the API of a given package
        #
        # @example
        #   {% yard my/package The::Name::Of::A::Class %}
        class Yard < API
            attr_reader :class_name
            def initialize(tag_name, text, tokens)
                package_name, class_name = text.split(/\s+/).map(&:strip)
                if !class_name
                    package_name, class_name = "", package_name
                end
                @class_name = class_name
                super(tag_name, package_name || "", tokens)
            end

            def render(context)
                api_path = super
                class_name, method_name = self.class_name.split("#")
                class_name = class_name.split("::")
                "#{api_path}/#{class_name.join("/")}.html##{method_name}-instance_method"
            end
        end
    end
end
Liquid::Template.register_tag('pkg', Rock::Jekyll::Package)
Liquid::Template.register_tag('type', Rock::Jekyll::Type)
Liquid::Template.register_tag('ticket', Rock::Jekyll::Ticket)
Liquid::Template.register_tag('api', Rock::Jekyll::API)
Liquid::Template.register_tag('yard', Rock::Jekyll::Yard)
Liquid::Template.register_tag('task', Rock::Jekyll::Task)

