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

  it "should provide an accessor to access a key/value hash" do
    f = Feelings.new(:a => 1)

    f.to_hash.should == {:a => 1}
  end

  it "should update a single attribute by a given delta" do
    f = Feelings.new(:a => 1)

    f.update_attribute_by(:a, -1)

    f[:a].should == 0
  end
end
