require 'active_support/all'

class Placeholder
  KEYS = [ [:fajr, 2], [:shurooq, 4], [:dhuhr, 6], [:asr, 8],
           [:maghrib, 10], [:isha, 12]
         ]
  # {
  #   "fajr": "05:50",
  #   "shurooq": "07:02",
  #   "dhuhr": "11:45",
  #   "asr": "14:06",
  #   "maghrib": "16:23",
  #   "isha": "18:01"
  # }
  def random
    KEYS.inject({}) do |hash, value|
      hash[value.first] = time_travel(minutes: value.last)
      hash
    end
  end

  def time_travel(minutes:)
    Time.current.advance(minutes: minutes).to_s(:time)
  end
end
