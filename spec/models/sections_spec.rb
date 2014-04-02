require "spec_helper"

describe Section do
  it { should have_many :lessons }
  it { should belong_to :chapter }
  it { should validate_presence_of :name }

  describe 'default scope' do
    it "should display the sections in the order of their id" do
      section1 = Section.create({:name => 'hi'})
      section2 = Section.create({:name => 'hijs'})
      section1.update({:name => "Webs"})
      Section.all.should eq [section1, section2]
    end
  end
end
