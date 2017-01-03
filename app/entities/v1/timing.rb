module Entities
  module V1
    class Timing < Grape::Entity
      expose :fajr
      expose :shurooq, if: { hide_optional_fields: false }
      expose :dhuhr
      expose :asr
      expose :maghrib
      expose :isha
    end
  end
end
