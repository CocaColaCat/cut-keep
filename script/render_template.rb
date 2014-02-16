require 'tilt'
require 'haml'
require_relative '../lib/application'
require_relative '../lib/util'

class Dummy 
  include Util
end

DATA_DIR = File.join(File.expand_path('../../', __FILE__), 'data')
xml = Nokogiri::XML(File.read(DATA_DIR + "/chapters.xml"))

chapters_params = { :links => Dummy.new.get_links(xml, "layout"), :cap => Dummy.new.get_captions(xml, "layout")}

engine = Tilt.new "./templates/layout.haml"
html = engine.render{ Tilt.new('./templates/chapters.haml').render Object.new, chapters_params }
File.open("./output.html", "w") { |f| f.write(html)}
