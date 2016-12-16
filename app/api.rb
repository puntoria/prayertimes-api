module DawaTools
  class API < Grape::API
    prefix 'api'
    format :json

    mount ::DawaTools::PrayerTimes
    # API Documentation
    add_swagger_documentation api_version: 'v1'
  end
end
