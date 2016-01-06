json.array!(@genders) do |gender|
  json.extract! gender, :id, :cate
  json.url gender_url(gender, format: :json)
end
