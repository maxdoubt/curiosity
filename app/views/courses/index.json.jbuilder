json.array!(@courses) do |course|
  json.extract! course, :id, :name, :number
  json.url course_url(course, format: :json)
end
