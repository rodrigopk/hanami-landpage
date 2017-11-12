# frozen_string_literal: true

module Landpage
  module Companies
    COMPANY_LIST ||= YAML.safe_load(File.open('config/companies.yml')).freeze

    def self.companies
      COMPANY_LIST
    end
  end
end
