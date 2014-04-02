require 'spec_helper'

describe Chapter do
  it { should have_many :sections }
  it { should validate_presence_of :name }

  describe 'default scope' do
    it "should display the chapters in the order of their number" do
      chapter1 = Chapter.create({:name => 'hi'})
      chapter2 = Chapter.create({:name => 'hijs'})
      chapter1.update({:name => "Webs"})
      Chapter.all.should eq [chapter1, chapter2]
    end
  end
end
