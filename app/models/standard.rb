class Standard < ActiveRecord::Base
  has_and_belongs_to_many :gradelevels
  belongs_to :standard_domain
  belongs_to :subject
  belongs_to :standardkind
end
