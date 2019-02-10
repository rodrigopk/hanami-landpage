# frozen_string_literal: true

module Landpage
  module Locale
    def self.included(base)
      base.before :set_locale
    end

    def set_locale
      I18n.locale = locale_from_request_or_default_locale
    end

    private

    def locale_from_request_or_default_locale
      locale = locale_from_request
      return locale if included_in_available_translations?(locale)

      I18n.default_locale
    end

    def locale_from_request
      languages = request.accept_language
      return unless languages

      !languages.empty? && languages[0][0].to_sym
    end

    def included_in_available_translations?(locale)
      I18n.available_locales.include?(locale)
    end
  end
end
