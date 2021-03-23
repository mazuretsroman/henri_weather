# frozen_string_literal: true

require 'database_cleaner/active_record'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

Location.create!(
  description: 'Kyiv, Ukraine',
  country_code: 'UA',
  zip_code: '01001'
)
