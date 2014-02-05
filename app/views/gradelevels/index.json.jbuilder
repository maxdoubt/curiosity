json.array!(@gradelevels) do |gradelevel|
  json.extract! gradelevel, :id, :name, :abbrev, :number
  json.url gradelevel_url(gradelevel, format: :json)
end
