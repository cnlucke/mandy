json.extract! comment, :id, :author_id, :parent_id, :parent_type, :slug, :content, :created_at, :updated_at
json.url comment_url(comment, format: :json)
