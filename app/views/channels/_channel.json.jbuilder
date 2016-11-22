json.extract! channel, :id, :name, :content, :ui_content, :is_private, :date_modified, :date_created, :user_id, :status, :created_at, :updated_at
json.url channel_url(channel, format: :json)