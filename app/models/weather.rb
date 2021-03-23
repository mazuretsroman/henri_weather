# frozen_string_literal: true

class Weather < ApplicationRecord
  belongs_to :location

  def temp_avg
    return if temp_max.nil? || temp_min.nil?

    [temp_max, temp_min].sum / 2
  end

  def avg_c
    to_celsius temp_avg
  end

  def avg_f
    to_fahrenheit temp_avg
  end

  def temp_c
    to_celsius temp
  end

  def temp_f
    to_fahrenheit temp
  end

  def temp_min_c
    to_celsius temp_min
  end

  def temp_min_f
    to_fahrenheit temp_min
  end

  def temp_max_c
    to_celsius temp_max
  end

  def temp_max_f
    to_fahrenheit temp_max
  end

  private

  def to_celsius(temp)
    return if temp.nil?

    (temp - 273).round(1)
  end

  def to_fahrenheit(temp)
    return if temp.nil?

    (1.8 * (temp - 273) + 32).round(1)
  end
end
