class StandardDomain < ActiveRecord::Base
  belongs_to :subject
  belongs_to :standardkind
  has_many :standards
end
