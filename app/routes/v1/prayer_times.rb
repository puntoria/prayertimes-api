module Routes
  module V1
    class PrayerTimes < Grape::API
      desc "Returns all prayer times for a specific date"
      params do
        requires :timestamp, type: Integer
      end

      get "prayer_times/daily" do
        # date = Time.at(params[:timestamp]).strftime("%d-%m-%y")
        Timings.all
      end
    end
  end
end
