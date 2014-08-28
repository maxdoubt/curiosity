class LessonTemplateBox < ActiveRecord::Base
  belongs_to :lesson_template
  belongs_to :lesson_entryset
  has_many :lesson_items
end
