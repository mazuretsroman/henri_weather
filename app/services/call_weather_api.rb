# frozen_string_literal: true

class CallWeatherApi
  attr_reader :location, :api_url

  def initialize(location:, api_url:)
    @location = location
    @api_url = api_url
  end

  def call
    RestClient.get(api_url)
  rescue RestClient::ExceptionWithResponse => e
    e.response
  end
end
