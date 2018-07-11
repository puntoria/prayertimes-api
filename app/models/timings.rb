# frozen_string_literal: true
require_relative 'concerns/timetable_editor'

# :nodoc:
class Timings < ActiveRecord::Base
  include ::TimetableEditor

end

