require 'bootstrap'

Given /I know of one entity/ do 
  @entity = Entity.new
end

Given /^the entity performs the action Murder$/ do
  @entity.perform(Actions::Murder.new)
end

Then /^my feelings toward the entity should be \?\?\?$/ do
  pending # express the regexp above with the code you wish you had
end

