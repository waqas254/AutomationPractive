
$name

Given(/^I am on required page$/) do
  visit("http://formvalidation.io/examples/complex-form/bootstrap.html")
end

When(/^I fill in "([^"]*)" with random name$/) do |locator|
  name = Faker::Name.name
  puts "Random name: #{name}"
  fill_in(locator, with: name)
end


And(/^I remember entered text in "([^"]*)"$/) do |locator|
  $name=find(:fillable_field, locator).value
end


And(/^confirm if "([^"]*)" has remembered name text$/) do |locator|
  expect(find(:fillable_field, locator).value).to eq($name)
end




When(/^I fill movie title with random text$/) do
  movie= Faker::Lorem.sentence(3, true, 4)
  find(:css, "#movieForm > div:nth-child(2) > div > div.col-xs-8.has-feedback > input").set(movie)

end





And(/^I fill website with random link$/) do
  website=Faker::Internet.url
  find(:css, "#movieForm > div:nth-child(4) > div > div:nth-child(1) > input").set(website)
end

And(/^I fill youtube with random link$/) do
  youtube=Faker::Internet.url('youtube.com')
  find(:css, "#movieForm > div:nth-child(4) > div > div:nth-child(2) > input").set(youtube)
end

And(/^I fill review with random paragraph$/) do
  paragraph=Faker::Lorem.paragraphs(2).join("\n")
  find(:css, "#movieForm > div:nth-child(5) > textarea").set(paragraph)
end

Then(/^page should not include "([^"]*)"$/) do |arg1|
  expect(page.text).not_to include("is required")
  #page.text.include? "is required"
end

And(/^I choose genre$/) do
  dropdowntext=all(:option)[1..-1].sample.value.capitalize
  puts "test "+dropdowntext
  select dropdowntext, :from => 'genre'
end

And(/^I press validate button$/) do
  all(:css, '#movieForm > button.btn.btn-default').first.click
end