class Timings < ActiveRecord::Base
  self.table_name = "kosova"

  def all
    {ping: "pong"}
  end

  def self.find_by_date(date)
    where(data: date)
  end
end
