require "spec_helper"

describe Routes::V1::PrayerTimes do 
  include Rack::Test::Methods

  def app
    Routes::V1::API
  end

  describe 'GET /api/v1/prayer_times' do
    it "returns all prayer times for a specific date" do
      get "/v1/prayer_times/daily", timestamp: 1481929200

      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq({
        data: [
          {
            id: 1,
            type: "prayer_times",
            for: "daily",
            attributes: {
              date_for: "2016-12-17",
              fajr: "5:56",
              shurooq: "7:53",
              dhuhr: "11:56",
              asr: "1:35",
              maghrib: "3:59",
              isha: "5:49"
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
      }.to_json)
    end

    it "returns prayer times for a specific week" do
    end

    it "returns prayer times for a specific month" do
    end

    it "UNIX timestamp for the specified time zone" do
    end

    it 'returns a 404 error if timestamp is not provided' do
    end
  end
end

