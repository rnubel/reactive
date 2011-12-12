require 'spec/spec_helper'

describe Reactive::Action do
  it "should instantiate" do
    Reactive::Action.new.should_not be_nil
  end

end
