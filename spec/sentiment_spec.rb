require File.expand_path('spec/spec_helper')

describe Sentiment do
  it "should instantiate" do
    Sentiment.new.should_not be_nil
  end
end
