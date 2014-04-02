require 'spec_helper'

describe Chapter do
  it { should have_many :sections }
  it { should validate_presence_of :name }
end
