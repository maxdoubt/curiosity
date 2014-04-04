json.array!(@semesters) do |semester|
  json.extract! semester, :id, :name, :begin_date, :end_date
  json.url semester_url(semester, format: :json)
end
