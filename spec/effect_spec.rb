require File.expand_path('spec/spec_helper')

describe Reactive::Effect do
  it "should instantiate" do
    Reactive::Effect.new.should_not be_nil
  end

  it "should respond to update_emotions and take one argument" do
    e = Reactive::Effect.new

    e.update_emotions(nil)
  end

  it "should instantiate with an emotions delta and feelings delta" do
    ent = Entity.new
    e = Reactive::Effect.new({:happiness => -1}, { ent => {:like => -1} })

    e.should_not be_nil
  end

  it "should update emotions per its emotions_change" do
    e = Reactive::Effect.new({:blah => 1}, {})

    em = mock()
    em.expects(:change_attribute_by).with(:blah, 1).returns(nil)

    e.update_emotions(em)
  end

  it "should update feelings for each entity per its feelings_change" do
    f = mock()
    f.expects(:change_attribute_by).with(:asdf, 1).returns(nil)
    ent = mock(:feelings_toward => f)

    e = Reactive::Effect.new({}, {ent => {:asdf => 1}})

    e.update_feelings
  end

  it "should compare via the equality operator to other Reactive::Effects" do
    Reactive::Effect.new( {:blah => 1}, {:arg => 0} ).should == 
       Reactive::Effect.new( {:blah => 1}, {:arg => 0} ) 
  end
end
