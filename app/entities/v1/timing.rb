module Entities
  module V1
    class Timing < Grape::Entity
      expose :hijri
      expose :sunrise
      expose :fajr
      expose :shurooq
      expose :dhuhr
      expose :asr
      expose :maghrib
      expose :isha
    end
  end
end
