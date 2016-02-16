Given(/^I am on wiki page$/) do
  visit('https://en.wikipedia.org/wiki/Main_Page')
end

Given(/^I am on "([^"]*)" wiki page$/) do |language|
  language.downcase!
  #puts YAML.load_file('urls.yml')['country']['lang'][language]
  visit(YAML.load_file('urls.yml')['country']['lang'][language])

end

When(/^I search for "([^"]*)"$/) do |text|
  fill_in('searchInput', with: text)
end

When(/^search field has text "([^"]*)"$/) do |text|
  have_field(text)
end


When(/^I press search button$/) do
 all(:css, '#searchButton').first.click

end

Then(/^I should see "([^"]*)"$/) do |text|
  assert_text(text)
end

When(/^I click image$/) do
  first("td > a > img").click
end

When(/^I click close button$/) do
  find('.mw-mmv-close').click
end



And(/^And I search for "([^"]*)" then I see then a click image and i should see "([^"]*)" and i close then i should see "([^"]*)"$/) do |text, image_text, result|
  steps %Q{
    When I search for "#{text}"
    And I press search button
    Then I should see "#{result}"
    When I click image
    Then I should see "#{image_text}"
    When I click close button

        }
  step %Q{Then I should see "#{result}"}
end