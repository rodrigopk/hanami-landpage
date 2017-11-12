# frozen_string_literal: true

module Landpage
  module Interests
    INTERESTS_LIST ||= YAML.safe_load(File.open('config/interests.yml')).freeze

    def self.interests
      INTERESTS_LIST
    end
  end
end
