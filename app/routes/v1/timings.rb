module Routes
  module V1
    class Timing < Grape::API
      helpers do
      end

      desc "Returns all prayer times for a specific date"
      params do
        requires :timestamp, type: Integer
      end

      get "timings/daily" do
        date = Time.at(params[:timestamp]).strftime("%d-%m-%Y")
        timings = Timings.find_by_date(date)
        present :data, timings, with: Entities::V1::Timing
        present :prayer_method_name, "0"
        present :daylight, "-/-"
        present :timezone, "UTC+01:00"
        present :latitude, "42.6629"
        present :longitude, "21.1655"
        present :city, "Pristina"
        present :country, "Kosovo"
        present :qibla_direction, "137"
      end

      get "timings/weekly" do
      end

    end
  end
end
