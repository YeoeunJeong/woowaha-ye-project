json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :manufacturer_id
  json.url brand_url(brand, format: :json)
end
