json.array!(@pictures) do |picture|
  json.extract! picture, :id, :title, :cat_id, :cohort_id, :url
  json.url picture_url(picture, format: :json)
end
