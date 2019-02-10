# frozen_string_literal: true

module Web
  module Views
    module About
      class Home
        include Web::View
        def age
          Landpage::PersonalInfo.age_in_years
        end

        def phone
          Landpage::PersonalInfo.current_telephone
        end

        def email
          Landpage::PersonalInfo.current_email
        end
      end
    end
  end
end
