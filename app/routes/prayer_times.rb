module DawaTools
  class PrayerTimes < Grape::API
    format :json

    params do
      requires :timestamp, type: Date
    end
    get "/prayer_times/daily" do
      # DawaTools::PrayerTimes::Timings.new


    end

  end
end
