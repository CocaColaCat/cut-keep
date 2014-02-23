class TemplateRenderer
  
  def self.render(template_name, scope=Object.new, params={})
    template_file = File.join(TEMPLATES_DIR, "#{template_name}")
    layout_file = File.join(TEMPLATES_DIR, "layout.haml")
    engine = Tilt.new (layout_file)
    engine.render {Tilt.new(template_file).render scope, params}
  end

end
