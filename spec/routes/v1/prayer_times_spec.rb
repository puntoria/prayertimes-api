require "spec_helper"

describe Routes::V1::Timing do 
  include Rack::Test::Methods

  def app
    Routes::V1::API
  end

  describe 'GET /api/v1/timings' do
    it "returns all prayer times for a specific date" do
      get "/v1/timings/daily", timestamp: 1481929200

      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq(
        {
          "data": {
            "type": "prayer_times",
            "for": "daily",
            "hijri": "17-03-1438",
            "sunrise": "05:15",
            "fajr": "05:45",
            "shurooq": "06:56",
            "dhuhr": "11:37",
            "asr": "13:57",
            "maghrib": "16:12",
            "isha": "17:51"
          },
          "prayer_method_name": "0",
          "daylight": "-/-",
          "timezone": "UTC+01:00",
          "latitude": "42.6629",
          "longitude": "21.1655",
          "city": "Pristina",
          "country": "Kosovo",
          "qibla_direction": "137"
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

