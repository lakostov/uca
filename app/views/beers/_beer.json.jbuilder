json.extract! beer, :id, :name, :abv, :ibu, :ounces, :brewery_id, :style_id, :created_at, :updated_at
json.url beer_url(beer, format: :json)
