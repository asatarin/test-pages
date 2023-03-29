module ToTimeCodeFilter
  def to_timecode(input, summary_text = "Click to expand")
#     markdown = Liquid::Template.parse(input).render(@context)
#     html = Jekyll::Renderer.new(@context.registers[:site], {}).convert(markdown)
    "<span style="color:blue">input</span>"
  end
end

Liquid::Template.register_filter(ToTimeCodeFilter)
