require File.expand_path('spec/spec_helper')

describe Effect do
  it "should instantiate" do
    Effect.new.should_not be_nil
  end

  it "should respond to update_emotions and take one argument" do
    e = Effect.new

    e.update_emotions(nil)
  end
end
