require File.expand_path('bootstrap')

Given /^I have a personality of:$/ do |table|
  @entities = {}
  @self = Self.new(Personality.new(table.rows_hash))
end

Given /^I know of an entity (\w+)$/ do |name|
  @entities[name] = Entity.new(:name => name)
end

Given /^I have feelings towards (\w+) currently as:$/ do |name, table|
  @entities[name].feelings_toward = Feelings.new(table.rows_hash)
end

Given /^(\w+) performs the action Murder on (\w+)$/ do |name_src, name_dst|
  action = Actions::Murder.new(:source       => @entities[name_src],
                              :destination  => @entities[name_dst])
  @self.react_to!(action)
end

Then /^my feelings toward (\w+) should be:$/ do |name, table|
  expected_feelings = Feelings.new(table.rows_hash)

  @entities[name].feelings_toward.should == expected_feelings
end

