require './config/environment'
$:.unshift Config.root.join('lib')

OTR::ActiveRecord.configure_from_file! Config.root.join('config', 'database.yml')

[
  %w(app web ** *.rb),
  %w(app models ** *.rb),
  %w(app entities ** *.rb),
  %w(app routes v* *.rb),
  %w(app routes ** *.rb),
].each do |pattern|
  Dir.glob(Config.root.join(*pattern)).each { |file| require file }
end
