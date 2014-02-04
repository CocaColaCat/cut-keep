require 'webmachine'
require 'webmachine/adapters/rack'
require 'json'
require 'mongo'
require 'tilt'
require 'haml'
require_relative './resources/chapter_resource'

TEMPLATES_DIR = File.join(File.expand_path('../../', __FILE__), 'templates')

APP = Webmachine::Application.new do |app|

  app.configure do |config|
    config.adapter = :Rack 
  end

  app.routes do
    add ['chapter', :topic], ChapterResource
  end

end
