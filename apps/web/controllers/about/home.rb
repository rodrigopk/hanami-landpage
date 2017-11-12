# frozen_string_literal: true

module Web
  module Controllers
    module About
      class Home
        include Web::Action

        expose :companies

        def initialize(options = {})
          @company_helper = options.fetch(:companies_helper) do
            ::WebContainer.resolve(:companies_helper)
          end
        end

        def call(_)
          @companies = @company_helper.companies
        end
      end
    end
  end
end
