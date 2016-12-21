source "http://rubygems.org"

ruby "2.3.1"

gem "activerecord", "~> 4.2.7", require: "active_record"
gem "otr-activerecord"
gem "rake"
gem "grape"
gem "grape-entity"
gem "grape-swagger"
gem "rack-cors"
gem "grape-swagger-entity"
gem "sinatra", github: "sinatra/sinatra"



group :development, :test do
  gem "sqlite3"
end

group :test do
  gem "rspec"
  gem "rack-test"
  gem "capybara"
  gem "selenium-webdriver"
end

group :production do 
  gem "pg"
end
