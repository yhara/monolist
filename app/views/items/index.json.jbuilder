json.array!(@items) do |item|
  json.extract! item, :id, :folder_id, :name, :note
  json.url item_url(item, format: :json)
end
