json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :brand_id, :region_id, :addr, :lng, :lat
  json.url shop_url(shop, format: :json)
end
