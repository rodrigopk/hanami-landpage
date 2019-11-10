# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.4.4'
gem 'hanami', '~> 1.3'
gem 'hanami-model', '~> 1.3'
gem 'pg'
gem 'rake'

gem 'nokogiri', '~> 1.10.4'
gem 'rack', '~> 2.0.6'

# Translations
gem 'i18n'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'shotgun'
end

group :test, :development do
  gem 'byebug'
  gem 'dotenv', '~> 2.0'
  gem 'timecop'
end

group :test do
  gem 'capybara'
  gem 'ffaker'
  gem 'rspec'
end

group :production do
  # gem 'puma'
end
