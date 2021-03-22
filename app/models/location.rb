# frozen_string_literal: true

class Location < ApplicationRecord
  validates :country, presence: true
  validates :zip_code, presence: true
end
