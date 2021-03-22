# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CallWeatherApi do
  describe '.call' do
    it 'return truthy result' do
      location = build(:location)
      url = 'https://example.com'
      service = described_class.new(location: location, api_url: url)
      stub_request(:any, url).to_return(status: 200, body: File.read('./spec/factories/example_response.json'))
      subject = service.call

      expect(subject).to be_kind_of(RestClient::Response)
      expect(subject.code).to eq(200)
      expect(subject.body).to be_present
    end
  end
end
