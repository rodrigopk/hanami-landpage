# frozen_string_literal: true

require 'i18n'
require 'i18n/backend/fallbacks'

I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)
I18n.load_path << Dir[Hanami.root.join('config/locales/**/*.yml')]

I18n.available_locales = %i[
  zu
  de de-DE de-CH de-AT
  en en-US en-GB en-DE
  pt pt-br pt-BR pt-PT
]

I18n.default_locale = 'zu'

I18n.fallbacks.map('pt' => 'en-US')
I18n.fallbacks.map('pt-BR' => 'pt')
I18n.fallbacks.map('pt-PT' => 'pt-BR')
I18n.fallbacks.map('de' => 'en-US')
I18n.fallbacks.map('de-DE' => 'de')
I18n.fallbacks.map('de-AT' => 'de')
I18n.fallbacks.map('de-CH' => 'de')

I18n.fallbacks.map('en-US' => 'en')
I18n.fallbacks.map('en-GB' => 'en')

I18n.fallbacks.map('en' => '')

I18n.backend.load_translations
