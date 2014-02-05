require File.join(File.expand_path('../../../', __FILE__), 'lib', 'application')
require 'rspec'
require 'rack/test'

I18n.enforce_available_locales = false

module AppHelper
  def app
    APP.adapter
  end
end

World(Rack::Test::Methods, AppHelper)
