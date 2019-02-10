# frozen_string_literal: true

RSpec.describe Landpage::Date do
  let(:helper) { described_class }

  describe '#difference_in_years' do
    it 'returns the difference in years between two timestamps' do
      time_a = Time.parse('07-04-1988')
      time_b = Time.parse('10-02-2019')

      expect(helper.difference_in_years(time_a, time_b)).to eq(30)
    end
  end
end
