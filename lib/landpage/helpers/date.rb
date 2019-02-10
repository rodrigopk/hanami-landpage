# frozen_string_literal: true

module Landpage
  class Date
    ONE_YEAR_IN_SECONDS = 3600 * 24 * 365

    def self.difference_in_years(time_a, time_b)
      (time_b - time_a).floor / ONE_YEAR_IN_SECONDS
    end
  end
end
