# frozen_string_literal: true

class WebContainer
  extend Dry::Container::Mixin

  register :companies_helper do
    Landpage::Companies
  end
end
