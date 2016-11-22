json.extract! view_status, :id, :user_id, :item_id, :status, :created_at, :updated_at
json.url view_status_url(view_status, format: :json)