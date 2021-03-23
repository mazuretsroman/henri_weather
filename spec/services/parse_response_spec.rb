# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ParseResponse do
  describe '.call' do
    context 'when valid json' do
      it 'returns hash attributes' do
        response = File.read('./spec/factories/example_response.json')
        service = described_class.new(response: response)
        expected = { temp: 276.43,
                     temp_min: 275.15,
                     temp_max: 277.59,
                     description: 'light rain' }

        expect(service.call).to eq(expected)
      end
    end

    context 'when invalid json' do
      it 'returns empty hash' do
        response = 'a'
        service = described_class.new(response: response)

        expect(service.call).to eq({})
      end
    end
  end
end
