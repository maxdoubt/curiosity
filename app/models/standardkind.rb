class Standardkind < ActiveRecord::Base
  has_many :standards
  has_many :standard_domains
end
