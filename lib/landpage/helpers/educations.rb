# frozen_string_literal: true

module Landpage
  module Educations
    EDUCATION_LIST ||= YAML.safe_load(File.open('config/educations.yml')).freeze

    def self.educations
      EDUCATION_LIST
    end
  end
end
