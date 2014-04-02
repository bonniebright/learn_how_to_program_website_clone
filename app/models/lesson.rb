class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :content, :presence => true
  validates :number, :uniqueness => true
  belongs_to :section

  default_scope order('number ASC')

  def next
    next_lesson = Lesson.all.detect { |lesson| lesson.number > self.number }
  end

  def previous
    previous_lesson = Lesson.all.order(:number).reverse.detect { |lesson| self.number > lesson.number }
  end
end
