require 'ostruct'
require 'pathname'

ENV['RACK_ENV'] ||= 'test'

Config = OpenStruct.new
Config.env = ENV['RACK_ENV'] ? ENV['RACK_ENV'].to_sym : :development
Config.root = Pathname.new(File.expand_path('../..', __FILE__))

require File.expand_path('../application', __FILE__)
