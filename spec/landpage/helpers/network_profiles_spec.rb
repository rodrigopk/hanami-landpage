# frozen_string_literal: true

RSpec.describe Landpage::NetworkProfiles do
  let(:helper) { described_class }

  describe '#github' do
    it 'returns the github profile' do
      expect(helper.github).to eq(ENV['GITHUB_URL'])
    end
  end

  describe '#linkedin' do
    it 'returns the linkedin profile' do
      expect(helper.linkedin).to eq(ENV['LINKEDIN_URL'])
    end
  end

  describe '#twitter' do
    it 'returns the twitter profile' do
      expect(helper.twitter).to eq(ENV['TWITTER_URL'])
    end
  end
end
