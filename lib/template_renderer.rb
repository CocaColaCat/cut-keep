class TemplateRenderer
  
  def self.render(template_name, scope=Object.new, params={})
    template_file = File.join(TEMPLATES_DIR, "#{template_name}")
    engine = Tilt.new (template_file)
    engine.render scope, params
  end

end
