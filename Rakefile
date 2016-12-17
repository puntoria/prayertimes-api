require 'rspec/core'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

namespace :db do
  task :environment do
    require_relative 'config/application'
  end
end

task default: :spec
task test: :spec

