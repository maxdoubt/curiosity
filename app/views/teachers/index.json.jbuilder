json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :firstname, :lastname, :user_id, :number
  json.url teacher_url(teacher, format: :json)
end
