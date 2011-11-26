require File.expand_path('spec/spec_helper')

describe Self do
  it "should instantiate with a personality" do
    pers = mock(Personality)
    s = Self.new(pers)

    s.personality.should == pers
  end

  it "should have emotions" do
    s = Self.new(mock(Personality))

    s.should respond_to(:emotions)
  end
end


