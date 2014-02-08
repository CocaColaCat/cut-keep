require 'tilt'
require 'haml'

engine = Tilt.new "./templates/layout.haml"
html = engine.render Object.new, {:topics => ["layout", "color", "texture", "typography", "imagery"]}
File.open("./output.html", "w") { |f| f.write(html)}
