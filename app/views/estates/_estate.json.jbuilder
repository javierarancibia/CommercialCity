json.extract! estate, :id, :name, :address, :price, :rooms, :bathrooms, :created_at, :updated_at
json.url estate_url(estate, format: :json)
