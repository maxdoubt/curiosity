json.array!(@lesson_templates) do |lesson_template|
  json.extract! lesson_template, :id, :name, :description, :rows, :cols
  json.url lesson_template_url(lesson_template, format: :json)
end
