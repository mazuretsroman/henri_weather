# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SaveWeather do
  describe '.call' do
    context 'success api call' do
      it 'saves weather' do
        location = create(:location)
        api_response = double(
          'CallWeatherApi',
          body: File.read('./spec/factories/example_response.json'),
          code: 200
        )
        service = described_class.new(location: location)
        allow(service).to receive(:api_response).and_return(api_response)

        expect { service.call }.to change { location.weathers.count }.by(1)
      end

      it 'returns weather' do
        location = create(:location)
        api_response = double(
          'CallWeatherApi',
          body: File.read('./spec/factories/example_response.json'),
          code: 200
        )
        service = described_class.new(location: location)
        allow(service).to receive(:api_response).and_return(api_response)

        expect(service.call).to be_a(Weather)
      end
    end

    context 'failure api call' do
      it 'returns response body' do
        location = create(:location)
        api_response = double('CallWeatherApi', code: 404, body: 'error')
        service = described_class.new(location: location)
        allow(service).to receive(:api_response).and_return(api_response)

        expect(service.call).to eq('error')
      end
    end
  end
end
