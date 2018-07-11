# frozen_string_literal: true

require 'active_support/concern'

module TimetableEditor
  extend ActiveSupport::Concern

  module ClassMethods
    def fajr
      time = Time.parse(self.fajr)
      self.fajr = time.advance(minutes: 40)
    end

    def dhuhr
      time = Time.parse(self.dhuhr)
      self.dhuhr = time.advance(minutes: 16)
    end

  end
end