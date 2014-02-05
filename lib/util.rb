module Util
  
  def get_references(text, topic)
    nodeSet = text.xpath("/chapters/chapter[name='#{topic}']/reference")
    nodeSet.inject([]) { |result, node| result << node.content }
  end

end
