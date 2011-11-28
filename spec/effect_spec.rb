require File.expand_path('spec/spec_helper')

describe Effect do
  it "should instantiate" do
    Effect.new.should_not be_nil
  end
end
