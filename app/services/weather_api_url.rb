# frozen_string_literal: true

# WeatherApiUrl.new(location: Location.last, api_url: ENV['WEATHER_API_URL'], api_key: ENV['WEATHER_API_KEY'])
class WeatherApiUrl
  attr_reader :location, :api_url, :api_key

  def initialize(location:, api_url:, api_key:)
    @location = location
    @api_url = api_url
    @api_key = api_key
  end

  def call
    api_url
      .gsub('{zip_code}', location.zip_code)
      .gsub('{country_code}', location.country_code)
      .gsub('{API_key}', api_key)
  end
end
