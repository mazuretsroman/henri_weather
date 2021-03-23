# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WeatherApiUrl do
  describe '.call' do
    it 'returns url' do
      location = create(:location, country_code: 'UA', zip_code: '01001')
      url = 'https://api.com/weather?zip={zip_code},{country_code}&appid={API_key}'
      api_key = 'abcd'
      service = described_class.new(location: location, api_url: url, api_key: api_key)

      expect(service.call).to eq('https://api.com/weather?zip=01001,UA&appid=abcd')
    end
  end
end
