json.array!(@users) do |user|
  json.extract! user, :first_name, :last_name, :user_name, :password, :email_address, :active, :address, :dob
  json.url user_url(user, format: :json)
end
