require 'byebug'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'capybara/webkit'
require 'yaml'
require 'rspec'
require 'selenium-webdriver'
require 'faker'

$driver = ENV['DRIVER'] || :selenium
$driver = $driver.to_sym

Capybara.default_driver = $driver


$browser = ENV['BROWSER'] || :chrome
$browser = $browser.to_sym

puts "Browser: #{$browser}"
puts "Driver: #{$driver}"

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => $browser)
end

 Capybara::Webkit.configure do |config|
  config.allow_unknown_urls
 end


Capybara.register_driver :apple_iphone_5 do |app|
  mobile_emulation = { "deviceName" => "Apple iPhone 5" }
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => {'mobileEmulation' => mobile_emulation})
  Capybara::Selenium::Driver.new(app,
                                 :browser => :chrome,
                                 :desired_capabilities => capabilities)
end