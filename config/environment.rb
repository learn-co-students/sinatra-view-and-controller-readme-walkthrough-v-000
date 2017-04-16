ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
require 'require_all'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
require_all 'models'
