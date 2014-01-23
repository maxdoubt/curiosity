json.array!(@lesson_template_boxes) do |lesson_template_box|
  json.extract! lesson_template_box, :id, :lesson_template_id, :lesson_entryset_id, :row, :col, :rowspan, :colspan
  json.url lesson_template_box_url(lesson_template_box, format: :json)
end
