json.array!(@friends) do |friend|
  json.extract! friend, :user_name, :friend_user_name, :active, :active_since, :created_at, :image, :user_id
  json.url friend_url(friend, format: :json)
end
