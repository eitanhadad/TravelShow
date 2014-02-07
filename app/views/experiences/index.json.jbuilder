json.array!(@experiences) do |experience|
  json.extract! experience, :title, :continent, :country, :city, :area, :recommended, :picture
  json.url experience_url(experience, format: :json)
end
