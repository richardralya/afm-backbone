json.extract! item, :id, :topic_id, :user_id, :name, :content, :media_link, :critera_count, :date_created, :date_modified, :status, :created_at, :updated_at
json.url item_url(item, format: :json)