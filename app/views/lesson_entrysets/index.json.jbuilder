json.array!(@lesson_entrysets) do |lesson_entryset|
  json.extract! lesson_entryset, :id, :name, :parent_id, :lft, :rgt, :depth
  json.url lesson_entryset_url(lesson_entryset, format: :json)
end
