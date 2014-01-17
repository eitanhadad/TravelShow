json.array!(@data) do |datum|
  json.extract! datum, 
  json.url datum_url(datum, format: :json)
end
