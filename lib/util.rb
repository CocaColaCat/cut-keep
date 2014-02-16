module Util
  
  def get_links(text, topic)
    links = text.xpath("/chapters/chapter[topic='#{topic}']/reference/link")
    links.inject([]) { |result, link| result << link.content }
  end

  def get_captions(text, topic)
     captions = text.xpath("/chapters/chapter[topic='#{topic}']/reference/caption") 
     captions.inject([]) { |result, caption| result << caption.content }
  end

end
