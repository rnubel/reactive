require File.expand_path('spec/spec_helper')

describe Reactive::Emotions do
  it "should instantiate" do
    e = Reactive::Emotions.new

    e.should_not be_nil
  end

  it "should respond to change_attribute_by with args of attribute, delta" do
    e = Reactive::Emotions.new

    lambda { e.change_attribute_by(:blah, 1) }.should_not raise_error
  end
end
