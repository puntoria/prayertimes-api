require 'rubygems'
require 'bundler/setup'

require 'rake'

require 'rspec/core'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :environment do
  ENV['RACK_ENV'] ||= 'development'
  require File.expand_path('../config/environment', __FILE__)
end

task routes: :environment do
  DawaTools::API.routes.each do |route|
    method = route.request_method.ljust(10)
    path = route.origin
    puts " #{method} #{path}"
  end
end

task default: [:spec]
