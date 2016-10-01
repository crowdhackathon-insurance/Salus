json.extract! user, :id, :first_name, :last_name, :weight, :height, :picture_url, :fit, :smoke, :created_at, :updated_at
json.url user_url(user, format: :json)