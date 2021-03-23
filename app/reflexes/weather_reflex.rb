# frozen_string_literal: true

class WeatherReflex < ApplicationReflex
  def show
    @location = Location.find(element.dataset[:location_id])
    @weather = BuildWeather.new(location: @location).call
  end
end
