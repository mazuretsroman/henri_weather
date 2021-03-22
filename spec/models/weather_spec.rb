# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Weather, type: :model do
  describe 'relations' do
    it { should belong_to(:location) }
  end

  describe '.temp_avg' do
    context 'when temp_min and temp_max present' do
      it 'returns average temperature' do
        weather = create(:weather, temp_min: 0, temp_max: 10)

        expect(weather.temp_avg).to eq(5)
      end
    end

    context 'when temp_min and/or temp_max nil' do
      it 'returns nil' do
        weather = create(:weather, temp_min: nil, temp_max: 10)

        expect(weather.temp_avg).to eq(nil)
      end
    end
  end
end
