require File.expand_path('spec/spec_helper')

describe Effect do
  it "should instantiate" do
    Effect.new.should_not be_nil
  end

  it "should respond to update_emotions and take one argument" do
    e = Effect.new

    e.update_emotions(nil)
  end

  it "should instantiate with an emotions delta and feelings delta" do
    ent = Entity.new
    e = Effect.new({:happiness => -1}, { ent => {:like => -1} })

    e.should_not be_nil
  end

  it "should update emotions per its emotions_change" do
    e = Effect.new({:blah => 1}, {})

    em = mock()
    em.expects(:change_attribute_by).with(:blah, 1).returns(nil)

    e.update_emotions(em)
  end

  it "should compare via the equality operator to other Effects" do
    Effect.new( {:blah => 1}, {:arg => 0} ).should == 
       Effect.new( {:blah => 1}, {:arg => 0} ) 
  end
end
