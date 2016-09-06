json.extract! restaurant, :id, :name, :address, :rating, :delivery_time, :has_ten_bis, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)