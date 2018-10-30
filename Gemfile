# frozen_string_literal: true

source 'http://rubygems.org'

ruby '2.3.4'

gem 'activerecord'
gem 'dotenv'
gem 'ffi', '>= 1.9.24'
gem 'globalize'
gem 'grape', '>= 1.1.0'
gem 'grape-entity'
gem 'grape-swagger'
gem 'grape-swagger-entity'
gem 'hijri'
gem 'nokogiri', '>= 1.8.2'
gem 'one_signal'
gem 'otr-activerecord'
gem 'pry'
gem 'rack-cors'
gem 'rake'
gem 'rest-client'
gem 'rspec'
gem 'rubocop', '~> 0.55.0', require: false
gem 'sinatra', github: 'sinatra/sinatra'

group :development, :test do
  gem 'sqlite3'
end

group :test do
  gem 'capybara'
  gem 'rack-test'
  gem 'selenium-webdriver'
end

group :production do
  gem 'pg'
end
