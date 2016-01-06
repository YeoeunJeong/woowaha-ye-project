json.array!(@uses) do |use|
  json.extract! use, :id, :cate
  json.url use_url(use, format: :json)
end
