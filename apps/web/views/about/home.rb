# frozen_string_literal: true

module Web
  module Views
    module About
      class Home
        include Web::View

        BIRTH_DATE = Time.parse('07-04-1988')

        def age_in_years
          Landpage::Date.difference_in_years(BIRTH_DATE, Time.now)
        end
      end
    end
  end
end
