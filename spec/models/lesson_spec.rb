require 'spec_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }
  it { should validate_uniqueness_of :number }
  it { should belong_to :section }

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :number => 1, :content => "small"})
      next_lesson = Lesson.create({:name => 'lesson2', :number => 3, :content => "small"})
      current_lesson.next.should eq next_lesson
    end
  end
  context '#previous' do
    it 'returns the lesson with the next-lowest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :number => 5, :content => "small"})
      previous_lesson = Lesson.create({:name => 'lesson2', :number => 4, :content => "small"})
      current_lesson.previous.should eq previous_lesson
    end
  end
end
