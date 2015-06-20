ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

# Prevent database truncation if the environment is production
if Rails.env.production?
  abort('The Rails environment is running in production mode!')
end

require 'spec_helper'
require 'rspec/rails'
require 'shoulda/matchers'
# Add additional requires below this line. Rails is not loaded until this point!

# Checks for pending migrations before tests are run.
ActiveRecord::Migration.maintain_test_schema!

Capybara.exact = true

RSpec.configure do |config|
  config.use_transactional_fixtures = true

  # Provide the FactoryGirl methods
  config.include FactoryGirl::Syntax::Methods
end
