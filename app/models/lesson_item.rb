class LessonItem < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :lesson_template_box
  # belongs_to :user

end
