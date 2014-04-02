class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :content, :presence => true
  validates :number, :uniqueness => true
end
