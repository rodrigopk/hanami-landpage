# frozen_string_literal: true

module Landpage
  module Locale
    def self.included(base)
      base.before :set_locale
    end

    def set_locale
      I18n.locale = request.env['HTTP_ACCEPT_LANGUAGE'] || I18n.default_locale
    end
  end
end
