json.array!(@daykinds) do |daykind|
  json.extract! daykind, :id, :name, :school_id, :semester_id
  json.url daykind_url(daykind, format: :json)
end
