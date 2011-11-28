require File.expand_path('spec/spec_helper')

describe Self do
  it "should instantiate with a personality" do
    pers = mock()
    s = Self.new(pers)

    s.personality.should == pers
  end

  it "should have emotions" do
    s = Self.new(mock())

    s.should respond_to(:emotions)
  end

  it "should be able to react to an action" do
    s = Self.new(mock())

    s.should respond_to :react_to!
  end

  it "should update emotions based on an action's effect" do
    s = Self.new(mock())
    s.emotions = mock()
    a = Action.new
    eff = mock()

    a.expects(:compute_effect).once.returns(eff)
    eff.expects(:update_emotions).with(s.emotions).returns(nil)

    s.react_to!(a)

  end

end


