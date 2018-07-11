# frozen_string_literal: true

require 'active_support/core_ext/time'

# :nodoc:
module Utils
  def time_advanced(attr_name, minutes:)
    time = Time.parse(attr_name)
    time.advance(minutes: minutes).strftime('%I:%M')
  end
  
  def read(key)
    read_attribute(key.to_sym)
  end

  def change(key, value)
    write_attribute(key.to_sym, value)
  end
end
