json.array!(@posts) do |post|
  json.extract! post, :subject, :message, :posted_by, :posted_date, :travel_id
  json.url post_url(post, format: :json)
end
