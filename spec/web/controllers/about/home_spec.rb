# frozen_string_literal: true

require_relative '../../../spec_helper'

describe Web::Controllers::About::Home do
  let(:action) { Web::Controllers::About::Home.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)

    expect(response[0]).to eq(200)
  end
end
