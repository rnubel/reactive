require File.expand_path('spec/spec_helper')

describe Personality do
  it "should instantiate from a key => value hash" do
    p = Personality.new( :x => 1, :y => 2)

    p.should_not be_nil
  end

  it "should define [] operator to access personality attributes" do
    p = Personality.new( {:x => 1} )

    p[:x].should == 1
  end

end
