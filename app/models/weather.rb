# frozen_string_literal: true

class Weather < ApplicationRecord
  belongs_to :location

  def temp_avg
    return if temp_max.nil? || temp_min.nil?

    [temp_max, temp_min].sum / 2
  end
end
