require "spec_helper"

describe DawaTools::API do 
  include Rack::Test::Methods

  def app
    DawaTools::API
  end

  it "returns all prayer times for a specific date" do
    get "api/prayer_times", timestamp: Date.today.to_time.to_i

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

  it "returns prayer times for a specific month" do 
  end

  it "UNIX timestamp for the specified time zone" do 
  end
end
