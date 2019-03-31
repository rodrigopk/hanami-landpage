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

  describe '#mastodon' do
    it 'returns the mastodon profile' do
      expect(helper.mastodon).to eq(ENV['MASTODON_URL'])
    end
  end
end
