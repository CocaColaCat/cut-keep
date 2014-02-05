require 'webmachine'
require 'webmachine/adapters/rack'
require 'tilt'
require 'haml'
require 'nokogiri'
require_relative './util'
require_relative './resources/chapter_resource'
require_relative './template_renderer'

TEMPLATES_DIR = File.join(File.expand_path('../../', __FILE__), 'templates')

APP = Webmachine::Application.new do |app|

  app.configure do |config|
    config.adapter = :Rack 
  end

  app.routes do
    add ['chapter', :topic], ChapterResource
  end

end
