require 'spec/spec_helper'

describe Action do
  it "should instantiate" do
    Action.new.should_not be_nil
  end

end
