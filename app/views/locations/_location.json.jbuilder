json.extract! location, :id, :description, :country, :zip_code, :created_at, :updated_at
json.url location_url(location, format: :json)
