json.extract! post, :id, :title, :subtitle, :post_body, :created_at, :updated_at
json.url post_url(post, format: :json)
