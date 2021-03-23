# frozen_string_literal: true

class BuildWeather
  attr_reader :location

  def initialize(location:)
    @location = location
  end

  def call
    return api_response.body if api_response.code != 200

    attributes = weather_attributes(api_response.body)
    Weather.new(attributes)
  end

  private

  def api_url
    api_url = ENV['WEATHER_API_URL']
    api_key = ENV['WEATHER_API_KEY']

    @api_url ||= WeatherApiUrl.new(location: location, api_url: api_url, api_key: api_key).call
  end

  def api_response
    @api_response ||= CallWeatherApi.new(location: location, api_url: api_url).call
  end

  def weather_attributes(response_body)
    @weather_attributes ||= ParseResponse.new(response: response_body).call
  end
end
