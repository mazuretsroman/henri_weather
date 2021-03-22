# frozen_string_literal: true

FactoryBot.define do
  factory :location do
    description { 'Kyiv, Ukraine' }
    country_code { 'UA' }
    zip_code { '01001' }
  end
end