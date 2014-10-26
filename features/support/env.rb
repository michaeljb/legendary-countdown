require './lib/app'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'capybara-webkit'

Capybara.app = Countdown
Capybara.default_driver = :webkit
