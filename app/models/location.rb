# frozen_string_literal: true

class Location < ApplicationRecord
  has_many :weathers, dependent: :destroy

  validates :country_code, presence: true
  validates :zip_code, presence: true
end
