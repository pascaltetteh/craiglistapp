json.extract! post, :id, :title, :price, :neighbourhood, :postal_code, :description, :phone_number, :user_id, :category_id, :city_id, :pictures, :active, :created_at, :updated_at
json.url post_url(post, format: :json)
