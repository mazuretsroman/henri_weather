# frozen_string_literal: true

class ParseResponse
  attr_reader :response

  def initialize(response:)
    @response = response
  end

  def call
    return {} if parse_json.blank?

    {
      temp: temp,
      temp_min: temp_min,
      temp_max: temp_max,
      description: description
    }
  end

  private

  def parse_json
    @parse_json ||= JSON(response)
  rescue JSON::ParserError
    {}
  end

  def temp
    parse_json.dig('main', 'temp')
  end

  def temp_min
    parse_json.dig('main', 'temp_min')
  end

  def temp_max
    parse_json.dig('main', 'temp_max')
  end

  def description
    weather = parse_json.dig('weather')&.last
    return '' if weather.blank?

    weather['description']
  end
end
