json.extract! rating, :id, :item_id, :criterium_id, :user_id, :user_rank, :rating, :status, :created_at, :updated_at
json.url rating_url(rating, format: :json)