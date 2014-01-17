json.array!(@travels) do |travel|
  json.extract! travel, :travel, :travel_intro, :title, :friend, :created_at, :front_page_image
  json.url travel_url(travel, format: :json)
end
