json.array!(@blobstores) do |blobstore|
  json.extract! blobstore, :name, :continent, :country, :city, :title, :caption, :picture
  json.url blobstore_url(blobstore, format: :json)
end
