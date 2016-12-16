module DawaTools
  class PrayerTimes < Grape::API
    format :json

    get "/prayer_times" do 
      {
        data: {
          id: 1,
          type: "prayer_times",
          attributes: {
            name: "Fajr",
            time: "03:57"
          }
        }
      }
    end

  end
end
