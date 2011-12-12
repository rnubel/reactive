require 'spec/spec_helper'

describe Reactive::Feelings do
  it "should instantiate from a values hash" do
    f = Reactive::Feelings.new(:a => 1) 

    f.should_not be_nil
  end

  it "should force attributes to be symbols" do
    f = Reactive::Feelings.new("a" => 1) 

    f[:a].should == 1
  end

  it "should force values to be fixnums" do
    f = Reactive::Feelings.new(:a => "1") 

    f[:a].should be_a Numeric
    f[:a].should == 1
  end

  it "should override the [] operator to access its values" do
    f = Reactive::Feelings.new(:a => 1) 

    f[:a].should == 1
  end

  it "should provide an accessor to access a key/value hash" do
    f = Reactive::Feelings.new(:a => 1)

    f.to_hash.should == {:a => 1}
  end

  it "should update a single attribute by a given delta" do
    f = Reactive::Feelings.new(:a => 1)

    f.change_attribute_by(:a, -1)

    f[:a].should == 0
  end

  it "should compare based on attrs and values" do
    f1 = Reactive::Feelings.new(:a => 1, :b => 0)
    f2 = Reactive::Feelings.new(:a => 1, :b => "0")
    f3 = Reactive::Feelings.new(:a => 0, :b => 0)

    f1.should == f2
    f2.should_not == f3
  end
end
