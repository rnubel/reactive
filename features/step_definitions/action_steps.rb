require 'bootstrap'

Given /^I have a personality of:$/ do |table|
  @personality = Personality.new(table.rows_hash)
end

Given /^I know of one entity$/ do 
  @entity = Entity.new
end

Given /^I have feelings towards it currently as:$/ do |table|
  @entity.feelings_toward = Feelings.new(table.rows_hash)
end

Given /^the entity performs the action Murder$/ do
  @entity.perform(Actions::Murder.new)
end

Then /^my feelings toward the entity should be:$/ do |table|
  expected_feelings = Feelings.new(table.rows_hash)

  @entity.feelings_toward.should == expected_feelings
end

