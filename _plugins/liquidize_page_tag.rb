module Jekyll
  class LiquidizePageTag < Liquid::Tag
    def initialize(tagname = nil, max = nil, token = nil)
      super
    end
    def render(context)
      content = context.environments.first["page"]["content"]
      Liquid::Template.parse(content).render!(context, {})
    end
  end
end
Liquid::Template.register_tag('liquidize_page', Jekyll::LiquidizePageTag)
