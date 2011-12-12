require File.expand_path('spec/spec_helper')

describe Reactive::Sentiment do
  it "should instantiate with a score" do
    Reactive::Sentiment.new(1).should_not be_nil
  end

  it "should compare based on score alone" do
    Reactive::Sentiment.new(1).should == Reactive::Sentiment.new(1)
    Reactive::Sentiment.new(1.0).should == Reactive::Sentiment.new(1)
    Reactive::Sentiment.new(1).should_not == Reactive::Sentiment.new(-1)
  end
end
