require 'database_cleaner/active_record'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

Location.create!(
  description: 'Kyiv, Ukraine',
  country: 'UA',
  zip_code: '01001'
)