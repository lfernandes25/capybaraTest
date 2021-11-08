require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
  #selenium selenium_chrome selenium_chrome_healess
  config.default_driver = :selenium
  config.app_host = "https://automacaocombatista.herokuapp.com"
  config.default_max_wait_time = 10 # espera 10 segundos
end

#Configura para maximizar o navegador
Capybara.register_driver :selenium do |app|
  option = ::Selenium::WebDriver::Chrome::Options.new
  option.args << "--start-maximized"
  option.args << "--disable-infobars"
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: option)
end
