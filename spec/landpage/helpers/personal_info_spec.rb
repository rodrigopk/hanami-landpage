# frozen_string_literal: true

RSpec.describe Landpage::PersonalInfo do
  let(:helper) { described_class }

  before do
    Timecop.freeze(Time.parse('10-02-2019'))
  end

  describe '#age_in_years' do
    it 'returns the current age in years' do
      expect(helper.age_in_years).to eq(30)
    end
  end

  describe '#current_telephone' do
    it 'returns the telephone' do
      expect(helper.current_telephone).to eq(ENV['CURRENT_PHONE'])
    end
  end

  describe '#current_email' do
    it 'returns the current email' do
      expect(helper.current_email).to eq(ENV['CURRENT_EMAIL'])
    end
  end
end
