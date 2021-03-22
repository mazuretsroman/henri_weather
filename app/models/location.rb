# frozen_string_literal: true

class Location < ApplicationRecord
  validates :country_code, presence: true
  validates :zip_code, presence: true
end
