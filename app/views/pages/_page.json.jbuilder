json.extract! page, :id, :title, :slug, :body, :type, :created_at, :updated_at
json.url page_url(page, format: :json)
