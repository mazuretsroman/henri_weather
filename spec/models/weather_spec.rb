# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Weather, type: :model do
  describe 'relations' do
    it { should belong_to(:location) }
  end
end
