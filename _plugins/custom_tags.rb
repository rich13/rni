module Jekyll
  class HiddenBlock < Liquid::Block
    def render(context)
      if context.registers[:site].config['show_hidden']
        super
      else
        ""
      end
    end
  end

  class ListItemWithId < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      if @text =~ /\{#([\w-]+)\}/
        id = $1
        text = @text.gsub(/\{#[\w-]+\}/, '')
        "<li id=\"#{id}\">#{text}</li>"
      else
        "<li>#{@text}</li>"
      end
    end
  end
end

Liquid::Template.register_tag('hidden', Jekyll::HiddenBlock)
Liquid::Template.register_tag('li_id', Jekyll::ListItemWithId) 