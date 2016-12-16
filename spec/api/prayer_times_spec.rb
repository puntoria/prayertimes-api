require "spec_helper"

describe DawaTools::API do 
  include Rack::Test::Methods

  def app
    DawaTools::API
  end

  it "returns all prayer times for a specific date" do
     get "api/prayer_times"

     expect(last_response.status).to eq(200)
     expect(last_response.body).to eq({
       data: {
        id: 1,
        type: "prayer_times",
        attributes: {
          name: "Fajr",
          time: "03:57"
        }
       }
     }.to_json)
  end

  it "returns prayer times for a specific month" do 
  end

  it "UNIX timestamp for the specified time zone" do 
  end
end
