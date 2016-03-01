# frozen_string_literal: true

source 'https://rubygems.org'

# Rails
gem 'rails', '4.2.5.2'
gem 'sprockets'
gem 'sprockets-rails', require: 'sprockets/railtie'

# Use Haml for HTML templates (http://haml.info)
gem 'haml'
gem 'haml-rails'

# Use SCSS for stylesheets
gem 'sass'
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster.
gem 'turbolinks'

# Use Twitter Bootstrap Sass
gem 'bootstrap-sass'
gem 'bootstrap_form'

# Use sqlite3 as the database for Active Record.
gem 'sqlite3'

# immutable attributes
gem 'immutable_attributes'

group :development, :test do
  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development do
  # Use CoffeeScript source maps
  gem 'coffee-rails-source-maps'
  # Provide better error pages
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  # Style checkers
  gem 'rubocop', require: false
  gem 'reek', require: false
  gem 'rails_best_practices', require: false
  gem 'haml_lint', require: false
  gem 'scss_lint', require: false
  gem 'coffeelint'

  # Security checker
  gem 'bundler-audit', require: false

  # Testing
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'capybara', require: false
  gem 'database_cleaner'
  gem 'coveralls', require: false
end

group :doc do
  gem 'yard', require: false
end
