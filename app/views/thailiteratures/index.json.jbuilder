json.array!(@thailiteratures) do |thailiterature|
  json.extract! thailiterature, :id, :name, :picture, :fileupload
  json.url thailiterature_url(thailiterature, format: :json)
end
