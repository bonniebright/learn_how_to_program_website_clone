class Section < ActiveRecord::Base

  has_many :lessons
  belongs_to :chapter
  validates :name, :presence => true

  default_scope order('id ASC')

end
