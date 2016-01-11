json.array!(@admins) do |admin|
  json.extract! admin, :id, :id_name, :password, :shop_id
  json.url admin_url(admin, format: :json)
end
