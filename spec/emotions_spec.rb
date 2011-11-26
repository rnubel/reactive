require File.expand_path('spec/spec_helper')

describe Emotions do
  it "should instantiate" do
    e = Emotions.new

    e.should_not be_nil
  end
end
