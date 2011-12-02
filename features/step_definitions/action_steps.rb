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
  @action = Actions::Murder.new(:source       => @entities[name_src],
                              :destination  => @entities[name_dst])
end

Given /^I react to the action$/ do
  @self.react_to!(@action)
end

Then /^the action should have the effect on (\w+) as:$/ do |name, table|
  effect = @action.compute_effect
  effect.feelings_change[@entities[name]].should == Feelings.new(table.rows_hash).to_hash
end

Then /^my feelings toward (\w+) should be:$/ do |name, table|
  expected_feelings = Feelings.new(table.rows_hash)

  @entities[name].feelings_toward.should == expected_feelings
end

Then /^my sentiment towards (\w+) should be (.+)$/ do |name, score|
  @entities[name].sentiment_toward.should == Sentiment.new(score.to_f)
end
