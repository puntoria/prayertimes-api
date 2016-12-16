require File.expand_path('../config/environment', __FILE__)

if ENV['RACK_ENV'] == 'development'
  puts 'Loading in developer mode ...'
end

run DawaTools::App.instance
