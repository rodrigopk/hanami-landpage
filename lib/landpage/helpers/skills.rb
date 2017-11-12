# frozen_string_literal: true

module Landpage
  module Skills
    SKILL_LIST ||= YAML.safe_load(File.open('config/skills.yml')).freeze

    def self.skills
      SKILL_LIST
    end
  end
end
