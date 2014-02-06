class Subject < ActiveRecord::Base
  has_many :standards
  has_many :standard_domains
end
