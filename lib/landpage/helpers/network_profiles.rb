# frozen_string_literal: true

module Landpage
  class NetworkProfiles
    def self.github
      ENV['GITHUB_URL']
    end

    def self.linkedin
      ENV['LINKEDIN_URL']
    end

    def self.mastodon
      ENV['MASTODON_URL']
    end
  end
end
