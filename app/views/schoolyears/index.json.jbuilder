json.array!(@schoolyears) do |schoolyear|
  json.extract! schoolyear, :id, :begin_date, :end_date, :name
  json.url schoolyear_url(schoolyear, format: :json)
end
