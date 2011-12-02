require File.expand_path('spec/spec_helper')

describe Sentiment do
  it "should instantiate with a score" do
    Sentiment.new(1).should_not be_nil
  end

  it "should compare based on score alone" do
    Sentiment.new(1).should == Sentiment.new(1)
    Sentiment.new(1.0).should == Sentiment.new(1)
    Sentiment.new(1).should_not == Sentiment.new(-1)
  end
end
