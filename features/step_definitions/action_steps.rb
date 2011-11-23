require 'bootstrap'

Given /^I have a personality of:$/ do |table|
  
end

Given /^I know of one entity$/ do 
  @entity = Entity.new
end

Given /^I have feelings towards it currently as:$/ do |table|

end

Given /^the entity performs the action Murder$/ do
  @entity.perform(Actions::Murder.new)
end

Then /^my feelings toward the entity should be:$/ do |table|

end

