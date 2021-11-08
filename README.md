# capybaraTest

cucumber --init
cria uma pasta com no specs
crio o arquivo gemfile

source 'http://rubygems.org'

gem "cucumber"
gem "rspec"
gem "capybara"
gem "selenium-webdriver"

Salvo, no terminal na raiz do projeto executa o comando

bundle install

depois no arquivo env.rb adiciona

require "capybara/cucumber"
require "selenium-webdriver"