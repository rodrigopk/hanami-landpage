# frozen_string_literal: true

class WebContainer
  extend Dry::Container::Mixin

  register :companies_helper do
    Landpage::Companies
  end

  register :skills_helper do
    Landpage::Skills
  end

  register :educations_helper do
    Landpage::Educations
  end
end
