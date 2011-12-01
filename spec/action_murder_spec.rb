require File.expand_path('spec/spec_helper')

describe Actions::Murder do
  before :each do
    # Mock out objects
    @s = stub(:score => 1)
    @e_src = stub(:sentiment_toward => @s)
    @e_dst = stub(:sentiment_toward => @s)
  end

  it "should instantiate with a context as a hash" do
    action = Actions::Murder.new({})

    action.should_not be_nil
  end

  it "should pull out source and dest entities from context" do
    action = Actions::Murder.new({:source => @e_src, :destination => @e_dst})

    action.source_entity.should == @e_src
    action.destination_entity.should == @e_dst
  end

  it "should compute its effect as an Effect" do
    action = Actions::Murder.new({:source => @e_src, :destination => @e_dst})

    action.compute_effect.should be_an(Effect)
  end

  it "should compute the correct effect given a specific context" do

    action = Actions::Murder.new({:source => @e_src, :destination => @e_dst})

    expected_effect = Effect.new(
      {}, # Not sure yet
      {
        @e_src => { :like => -1, :fear => 1 }
      }
    )

    action.compute_effect.should == expected_effect
  end
end
