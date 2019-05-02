require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'
World(Capybara::DSL)

Capybara.register_driver :selenium do |app|
  Selenium::WebDriver::Chrome::Service.driver_path = "features/support/Additional_drivers/chromedriver.exe"
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end


Capybara.default_selector = :xpath


Capybara.configure do |config|
  config.default_max_wait_time = 10
  config.default_driver = :selenium
end