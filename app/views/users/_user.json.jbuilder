json.extract! user, :id, :name, :email, :encrypted_password, :organic_rank, :rank_boost, :created_at, :updated_at
json.url user_url(user, format: :json)