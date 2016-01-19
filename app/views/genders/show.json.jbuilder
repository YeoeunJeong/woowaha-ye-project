json.extract! @gender, :id, :cate, :created_at, :updated_at

json.cosms @cosms, :id, :name, :price, :brand_id, :gender_id, :use_id
