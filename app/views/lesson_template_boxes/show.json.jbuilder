json.extract! @lesson_template_box, :id, :lesson_template_id, :lesson_entryset_id, :row, :col, :rowspan, :colspan, :created_at, :updated_at
json.extract! @lesson_template_box.lesson_entryset, :name