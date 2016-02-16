Given(/^I am on developer page$/) do
  visit('https://developer.mozilla.org/de/docs/Web/HTML/Element/Input')
end


When(/^I fill input field with "([^"]*)"$/) do |arg1|
  find(:css, "#wikiArticle > p:nth-child(19) > input:nth-child(1)").set(arg1)
end

Then(/^input field should have value "([^"]*)"$/) do |arg1|
  expect(find('#wikiArticle > p:nth-child(19) > input:nth-child(1)').value).to eq(arg1)
end


Given(/^I am on developer select page$/) do
  visit('https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select')
end

When(/^I select "([^"]*)" value from dropdown$/) do |arg1|
  select arg1, :from => 'select'
end

Then(/^Dropdown should have "([^"]*)" selected$/) do |arg1|
  #has_select?('select', :selected => [arg1]).should == true
  expect(has_select?('select', :selected => arg1)).to be true
end










Given(/^I am on "([^"]*)" page$/) do |page|
  visit(page)
end

When(/^I select radio button "([^"]*)"$/) do |arg1|
  choose(arg1)
end

Then(/^Radio button "([^"]*)" should be selected$/) do |arg1|
  expect(find_field(arg1)).to be_checked
end