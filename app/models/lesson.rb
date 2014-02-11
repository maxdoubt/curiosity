class Lesson < ActiveRecord::Base
  belongs_to :lesson_template
  has_and_belongs_to_many :subjects
  has_and_belongs_to_many :gradelevels
end
