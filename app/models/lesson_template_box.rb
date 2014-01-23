class LessonTemplateBox < ActiveRecord::Base
  belongs_to :lesson_template
  belongs_to :lesson_entryset
end
