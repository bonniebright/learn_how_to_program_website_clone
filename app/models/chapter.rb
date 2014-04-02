class Chapter < ActiveRecord::Base
  has_many :sections
  validates :name, :presence => true
  default_scope order('id ASC')
end
