module Routes
  module V1
    class PrayerTimes < Grape::API
      helpers do

        def hash_with_indifferent_access(date_for, hash)
          {
            data: [
              {
                id: 1,
                type: "prayer_times",
                for: "daily",
                attributes: {
                  date_for: date_for,
                  fajr: hash["sabahu"],
                  shurooq: hash["lindja_diellit"],
                  dhuhr: hash["dreka"],
                  asr: hash["ikindia"],
                  maghrib: hash["akshami"],
                  isha: hash["jacia"]
                }
              }
            ],
            prayer_method_name: "",
            daylight: 0,
            timezone: "",
            latitude: "",
            longitude: "",
            city: "",
            country: "",
            qibla_direction: ""
          }
        end
      end
      
      desc "Returns all prayer times for a specific date"
      params do
        requires :timestamp, type: Integer
      end

      get "prayer_times/daily" do
        date = Time.at(params[:timestamp]).strftime("%d-%m-%Y")
        hash_with_indifferent_access(
          date,
          Timings.find_by_date(date)
        )
      end

    end
  end
end
