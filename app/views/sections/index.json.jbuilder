json.array!(@sections) do |section|
  json.extract! section, :id, :name, :course_id, :semester_id, :number, :begin_time, :end_time
  json.url section_url(section, format: :json)
end
