json.extract! post, :id, :feed_id, :author_id, :slug, :title, :body, :created_at, :updated_at
json.url post_url(post, format: :json)
