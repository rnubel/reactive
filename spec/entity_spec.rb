require File.expand_path('spec/spec_helper')

describe Reactive::Entity do
  it "should instantiate with a hash or args" do
    Reactive::Entity.new({}).should_not be_nil
  end

  it "should instantiate with default arguments" do
    e = Reactive::Entity.new
    
    e.should_not be_nil
    e.feelings_toward.should_not be_nil
  end

  it "should accept a name as an instantating argument" do
    e = Reactive::Entity.new(:name => "Person")

    e.name.should == "Person"
  end

  it "should store a Reactive::Self's feelings towards it" do
    e = Reactive::Entity.new
    f = mock()
    e.feelings_toward = f

    e.feelings_toward.should == f
  end

  it "should compute a Reactive::Self's sentiment towards it" do
    e = Reactive::Entity.new
    f = mock()
    e.feelings_toward = f

    # Computation should check these two fields
    f.expects(:to_hash).returns({:like => 1, :fear => 0})

    e.sentiment_toward.should == Reactive::Sentiment.new(1)
  end
end
