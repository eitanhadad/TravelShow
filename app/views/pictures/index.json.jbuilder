json.array!(@pictures) do |picture|
  json.extract! picture, :travel_id, :String, :image_url, :day_id, :String
  json.url picture_url(picture, format: :json)
end
