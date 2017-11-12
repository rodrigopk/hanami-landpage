# frozen_string_literal: true

module Web
  module Controllers
    module About
      class Home
        include Web::Action

        expose :companies, :skills, :educations, :interests

        def initialize(options = {})
          @company_helper = options.fetch(:companies_helper) do
            ::WebContainer.resolve(:companies_helper)
          end
          @skill_helper = options.fetch(:skills_helper) do
            ::WebContainer.resolve(:skills_helper)
          end
          @education_helper = options.fetch(:educations_helper) do
            ::WebContainer.resolve(:educations_helper)
          end
          @interest_helper = options.fetch(:interests_helper) do
            ::WebContainer.resolve(:interests_helper)
          end
        end

        def call(_)
          @companies = @company_helper.companies
          @skills = @skill_helper.skills
          @educations = @education_helper.educations
          @interests = @interest_helper.interests
        end
      end
    end
  end
end
