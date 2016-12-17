$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'api'))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'app'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'boot'

Bundler.require :default, ENV['RACK_ENV']

# Connect to database
OTR::ActiveRecord.configure_from_file! Config.root.join('config', 'database.yml')

# Load application
[
  %w(app models ** *.rb),
  %w(app entities ** *.rb),
  %w(app routes v* *.rb),
  %w(app routes ** *.rb),
].each do |pattern|
  Dir.glob(Config.root.join(*pattern)).each { |file| require file }
end

Dir[File.expand_path('../../app/routes/*.rb', __FILE__)].each do |f|
  require f
end

require 'api'
require 'dawa_tools_app'
