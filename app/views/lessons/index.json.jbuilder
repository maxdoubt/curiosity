json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :user_id, :lesson_template_id, :begin_date, :end_date, :lesson_state_id, :parent_id, :title
  json.url lesson_url(lesson, format: :json)
end
