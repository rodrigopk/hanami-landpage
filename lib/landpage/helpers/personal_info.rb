# frozen_string_literal: true

module Landpage
  class PersonalInfo
    BIRTH_DATE = Time.parse('07-04-1988')

    def self.age_in_years
      Landpage::Date.difference_in_years(BIRTH_DATE, Time.now)
    end

    def self.current_telephone
      ENV['CURRENT_PHONE']
    end

    def self.current_email
      ENV['CURRENT_EMAIL']
    end
  end
end
