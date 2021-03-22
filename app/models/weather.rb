# frozen_string_literal: true

class Weather < ApplicationRecord
  belongs_to :location
end
