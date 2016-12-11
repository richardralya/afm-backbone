json.extract! item, :id, :user_id, :name, :content, :media_link, :status, :created_at, :updated_at
json.url item_url(item, format: :json)