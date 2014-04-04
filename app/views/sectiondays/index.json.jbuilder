json.array!(@sectiondays) do |sectionday|
  json.extract! sectionday, :id, :daykind_id, :begin_time, :end_time
  json.url sectionday_url(sectionday, format: :json)
end
