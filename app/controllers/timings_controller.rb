class TimingsController < ApplicationController 
  def index
    @timings = Timings.all
  end
end
