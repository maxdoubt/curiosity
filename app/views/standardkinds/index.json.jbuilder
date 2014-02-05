json.array!(@standardkinds) do |standardkind|
  json.extract! standardkind, :id, :name
  json.url standardkind_url(standardkind, format: :json)
end
