# frozen_string_literal: true

source 'https://rubygems.org'

gem 'hanami', '~> 1.1'
gem 'hanami-model', '~> 1.1'
gem 'pg'
gem 'rake'

# Translations
gem 'i18n'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'shotgun'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
  gem 'byebug'
end

group :test do
  gem 'capybara'
  gem 'ffaker'
  gem 'rspec'
end

group :production do
  # gem 'puma'
end
