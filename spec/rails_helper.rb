# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)

# Prevent database truncation if the environment is production
if Rails.env.production?
  abort('The Rails environment is running in production mode!')
end

require 'spec_helper'
require 'rspec/rails'
require 'chromedriver/helper'

# Checks for pending migrations before tests are run.
ActiveRecord::Migration.maintain_test_schema!

Chromedriver.set_version '2.36'

Capybara.register_driver(:headless_chrome) do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: {
      args: %w[no-sandbox
               headless
               disable-popup-blocking
               disable-gpu
               window-size=1280,1024]
    }
  )

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: capabilities
  )
end

Capybara.exact = true
Capybara.ignore_hidden_elements = true
Capybara.javascript_driver = :headless_chrome

RSpec.configure do |config|
  config.use_transactional_fixtures = true

  # Provide the FactoryBot methods
  config.include FactoryBot::Syntax::Methods

  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    driven_by :selenium_chrome_headless
  end
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec

    with.library :active_record
    with.library :active_model
  end
end
