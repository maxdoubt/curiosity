json.array!(@lesson_items) do |lesson_item|
  json.extract! lesson_item, :id, :content, :lesson_id, :lesson_template_box_id, :user_id, :parent_id, :lft, :rgt, :depth
  json.url lesson_item_url(lesson_item, format: :json)
end
