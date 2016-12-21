require "date"
require "sinatra"

class App < Sinatra::Base
  set :root, File.dirname(__FILE__)

  helpers do
  end

  get "/" do
    date = Date.today.strftime("%d-%m-%Y")
    timings = Timings.find_by_date(date)

    erb :index, locals: {
      timings: timings
    }
  end
end

