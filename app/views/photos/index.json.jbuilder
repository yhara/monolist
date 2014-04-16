json.array!(@photos) do |photo|
  json.extract! photo, :id, :body
  json.url photo_url(photo, format: :json)
end
