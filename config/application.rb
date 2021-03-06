require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

require "pathname"
require "cgi"
require 'uri'

require "openid"
require 'openid/extensions/sreg'
require 'openid/extensions/pape'
require 'openid/store/filesystem'

require 'hatena/api/auth'

module Hotarugaike
  class Application < Rails::Application
    config.title = 'Hotarugaike'
    config.time_zone = 'Sapporo'
    config.i18n.default_locale = 'ja'
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
  end
end
