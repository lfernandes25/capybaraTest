require "capybara/cucumber"
require "selenium-webdriver"

=begin
Capybara.configure do |config|
  #selenium selenium_chrome selenium_chrome_healess
  config.default_driver = :selenium_chrome
  config.app_host = "https://automacaocombatista.herokuapp.com"
  config.default_max_wait_time = 10 # espera 10 segundos
  #config.maximize
end


#Configura para maximizar o navegador
Capybara.register_driver :selenium do |app|
  option = ::Selenium::WebDriver::Chrome::Options.new
  option.args << "--start-maximized"
  option.args << "--disable-infobars"
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: option)
end
=end

# Registrando o driver
Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)  # Vamos utilizar o navegador chrome
end

# Configurando o driver
Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :site_prism
  Capybara.page.driver.browser.manage.window.maximize  # Maximizando a tela
  config.default_max_wait_time = 10  # Tempo máximo que a automação vai esperar para a página carregar ou esperar um elemento
  config.app_host = "https://automacaocombatista.herokuapp.com" # URL base que vamos utilizar
end
