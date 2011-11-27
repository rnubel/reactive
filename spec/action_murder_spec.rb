require File.expand_path('spec/spec_helper')

describe Actions::Murder do
  it "should instantiate with a context as a hash" do
    action = Actions::Murder.new({})

    action.should_not be_nil
  end

end
