module Entities
  module V1
    class Timing < Grape::Entity
      expose :type
      expose :for
      expose :hijri
      expose :sunrise
      expose :fajr
      expose :shurooq
      expose :dhuhr
      expose :asr
      expose :maghrib
      expose :isha

      private

      def type
        "prayer_times"
      end

      def for
        "daily"
      end
    end
  end
end
