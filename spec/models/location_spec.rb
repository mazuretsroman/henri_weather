# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Location, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:country_code) }
    it { should validate_presence_of(:zip_code) }
  end

  describe 'fabric' do
    it 'is valid' do
      location = build(:location)

      expect(location).to be_valid
    end
  end
end
