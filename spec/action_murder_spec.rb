require File.expand_path('spec/spec_helper')

describe Actions::Murder do
  it "should instantiate with a context as a hash" do
    action = Actions::Murder.new({})

    action.should_not be_nil
  end

  it "should compute its effect as an Effect" do
    action = Actions::Murder.new({})

    action.compute_effect.should be_an(Effect)
  end
end
