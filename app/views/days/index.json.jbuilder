json.array!(@days) do |day|
  json.extract! day, :travel_id, :title, :country, :area, :hotel, :car, :comment, :created_at
  json.url day_url(day, format: :json)
end
