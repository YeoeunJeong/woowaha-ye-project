json.array!(@cosms) do |cosm|
  json.extract! cosm, :id, :name, :price, :brand_id, :use_id, :gender_id
  json.url cosm_url(cosm, format: :json)
end
