# frozen_string_literal: true

module Web
  module Controllers
    module About
      class Home
        include Web::Action

        expose :companies, :skills

        def initialize(options = {})
          @company_helper = options.fetch(:companies_helper) do
            ::WebContainer.resolve(:companies_helper)
          end
          @skill_helper = options.fetch(:skills_helper) do
            ::WebContainer.resolve(:skills_helper)
          end
        end

        def call(_)
          @companies = @company_helper.companies
          @skills = @skill_helper.skills
        end
      end
    end
  end
end
