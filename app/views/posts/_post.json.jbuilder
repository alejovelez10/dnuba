json.extract! post, :id, :name, :body, :user_id, :category_id, :created_at, :updated_at
json.url post_url(post, format: :json)
