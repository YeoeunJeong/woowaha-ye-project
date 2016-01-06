json.array!(@cos) do |co|
  json.extract! co, :id, :name, :price
  json.url co_url(co, format: :json)
end
