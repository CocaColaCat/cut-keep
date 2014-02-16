class ChapterResource < Webmachine::Resource
  include Util

  def allowed_methods
    ['GET']
  end

  def to_html
    path = File.join(File.expand_path('../../../', __FILE__), 'features/step_definitions/chapters.xml') 
    text = File.read(path)
    xml = Nokogiri::XML(text)
    links = get_links(xml, request.path_info[:topic])
    captions = get_captions(xml, request.path_info[:topic])
    params = {links: links, cap: captions}
    TemplateRenderer.render "chapters.haml", Object.new, params
  end

end
