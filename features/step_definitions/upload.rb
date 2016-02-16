When(/^I upload a file "([^"]*)"$/) do |path|
  find(:css, 'body > div > div.row > div.col-md-3 > input[type="file"]:nth-child(3)').set(path)
end

Then(/^I should see filename "([^"]*)" on page$/) do |filename|
  assert_text(filename)
end

When(/^I click on Upload button$/) do
  click_link_or_button('Upload all')
end

Then(/^I see full progress bar$/) do
  assert_selector('body > div > div.row > div.col-md-9 > div > div > div > div')
  expect(find('body > div > div.row > div.col-md-9 > div > div > div > div')[:style]).to eq("width: 100%;")

end












When(/^I fill in username with "([^"]*)"$/) do |arg1|
  find(:css, "#editArea > div > div > form > fieldset > input:nth-child(2)").set(arg1)
end

And(/^I upload file "([^"]*)"$/) do |file|
  attach_file('file', file)
end

And(/^I click on submit$/) do
  click_link_or_button('Submit')
end

Then(/^I see "([^"]*)"$/) do |arg1|
  assert_text("Upload Successful")
end