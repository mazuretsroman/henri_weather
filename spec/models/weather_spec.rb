# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Weather, type: :model do
  describe 'relations' do
    it { should belong_to(:location) }
  end

  describe '.temp_avg' do
    it 'returns average temperature' do
      weather = create(:weather, temp_min: 0, temp_max: 10)

      expect(weather.temp_avg).to eq(5)
    end
  end
end
