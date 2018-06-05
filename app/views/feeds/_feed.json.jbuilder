json.extract! feed, :id, :title, :slug, :body, :type, :created_at, :updated_at
json.url feed_url(feed, format: :json)
