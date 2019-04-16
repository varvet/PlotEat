# frozen_string_literal: true

require "cucumber/rails"
require "chromedriver/helper"
require "selenium/webdriver"

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation

Chromedriver.set_version "2.42"

Capybara.register_driver :headless_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new

  options.add_argument("--headless")
  options.add_argument("--no-sandbox")
  options.add_argument("--disable-popup-blocking")
  options.add_argument("--window-size=1366,768")

  driver = Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)

  driver
end

Capybara.javascript_driver = :headless_chrome
