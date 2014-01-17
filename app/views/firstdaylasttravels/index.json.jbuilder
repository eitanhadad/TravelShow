json.array!(@firstdaylasttravels) do |firstdaylasttravel|
  json.extract! firstdaylasttravel, :friend_name, :last_travel, :first_day
  json.url firstdaylasttravel_url(firstdaylasttravel, format: :json)
end
