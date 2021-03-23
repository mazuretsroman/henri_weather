# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Weather, type: :model do
  describe '.temp_avg' do
    context 'when temp_min and temp_max present' do
      it 'returns average temperature' do
        weather = build(:weather, temp_min: 0, temp_max: 10)

        expect(weather.temp_avg).to eq(5)
      end
    end

    context 'when temp_min and/or temp_max nil' do
      it 'returns nil' do
        weather = build(:weather, temp_min: nil, temp_max: 10)

        expect(weather.temp_avg).to eq(nil)
      end
    end
  end
end
