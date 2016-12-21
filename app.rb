require "date"
require "sinatra"
require "CGI"
class App < Sinatra::Base
  set :root, File.dirname(__FILE__)

  helpers do
    def javascript_include_tags(*sources)
      html = ""
      sources.each do |path|
        html << "<script src=\"#{path}\"></script>"
      end
      html
    end

    def stylesheet_include_tags(*sources)
      html = ""
      sources.each do |path|
        html << "<link rel='stylesheet' href=\"#{path}\">"
      end
      html
    end
  end

  get "/" do
    date = Date.today.strftime("%d-%m-%Y")
    timings = Timings.find_by_date(date)

    erb :index, locals: { timings: timings }
  end
end

