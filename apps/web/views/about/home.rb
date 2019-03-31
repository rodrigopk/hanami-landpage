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

        def github
          Landpage::NetworkProfiles.github
        end

        def linkedin
          Landpage::NetworkProfiles.linkedin
        end

        def mastodon
          Landpage::NetworkProfiles.mastodon
        end

        def medium
          Landpage::NetworkProfiles.medium
        end
      end
    end
  end
end
