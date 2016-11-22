json.extract! item, :id, :topic_id, :user_id, :name, :content, :media_link, :critera_count, :status, :created_at, :updated_at
json.url item_url(item, format: :json)