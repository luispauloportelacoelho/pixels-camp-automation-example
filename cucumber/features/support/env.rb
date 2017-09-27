require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome,
  desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
    'chromeOptions' => {
    'args' => ["window-size=1900x1024"]
    }))
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 60

Capybara.app_host = "https://pixels.camp/"

Before do
  Capybara.page.driver.browser.manage.window.maximize
end
