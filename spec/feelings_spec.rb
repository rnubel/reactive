require 'spec/spec_helper'

describe Feelings do
  it "should instantiate from a values hash" do
    f = Feelings.new(:a => 1) 

    f.should_not be_nil
  end

  it "should override the [] operator to access its values" do
    f = Feelings.new(:a => 1) 

    f[:a].should == 1
  end
end
