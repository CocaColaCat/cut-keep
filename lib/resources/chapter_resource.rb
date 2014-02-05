class ChapterResource < Webmachine::Resource
  include Util

  def allowed_methods
    ['GET']
  end

  def to_html
    path = File.join(File.expand_path('../../../', __FILE__), 'features/step_definitions/chapters.xml') 
    text = File.read(path)
    xml = Nokogiri::XML(text)
    references = get_references(xml, request.path_info[:topic])
  end

end
