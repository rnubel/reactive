require File.expand_path('spec/spec_helper')

describe Reactive::Self do
  it "should instantiate with a personality" do
    pers = mock()
    s = Reactive::Self.new(pers)

    s.personality.should == pers
  end

  it "should have emotions" do
    s = Reactive::Self.new(mock())

    s.should respond_to(:emotions)
  end

  it "should be able to react to an action" do
    s = Reactive::Self.new(mock())

    s.should respond_to :react_to!
  end

  it "should update emotions based on an action's effect" do
    s = Reactive::Self.new(mock())
    s.emotions = mock()
    a = Reactive::Action.new
    eff = mock()

    a.expects(:compute_effect).once.returns(eff)
    eff.expects(:update_feelings).returns(nil)
    eff.expects(:update_emotions).with(s.emotions).returns(nil)

    s.react_to!(a)

  end

  it "should update feelings for entities based on an action's effect" do
    s = Reactive::Self.new(mock())
    s.emotions = mock()
    eff = mock()
    eff.expects(:update_emotions).with(s.emotions).returns(nil)
    eff.expects(:update_feelings).returns(nil)
    a = mock(:compute_effect => eff)

    s.react_to!(a)
  end
end


