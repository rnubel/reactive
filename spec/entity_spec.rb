require File.expand_path('spec/spec_helper')

describe Entity do
  it "should instantiate with a hash or args" do
    Entity.new({}).should_not be_nil
  end

  it "should instantiate with default arguments" do
    Entity.new.should_not be_nil
  end

  it "should accept a name as an instantating argument" do
    e = Entity.new(:name => "Person")

    e.name.should == "Person"
  end

  it "should store a Self's feelings towards it" do
    e = Entity.new
    f = mock(Feelings)
    e.feelings_toward = f

    e.feelings_toward.should == f
  end
end
