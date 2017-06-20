# frozen_string_literal: true

source 'https://rubygems.org'

# Rails
gem 'rails', '5.0.4'
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

# Use Puma as the app server
gem 'puma'

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

  # Listen for file changes
  gem 'listen'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'bundler-audit', require: false
  gem 'capybara', require: false
  gem 'coffeelint'
  gem 'coveralls', require: false
  gem 'factory_girl_rails'
  gem 'haml_lint', require: false
  gem 'rails_best_practices', require: false
  gem 'reek', require: false
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'scss_lint', require: false
  gem 'shoulda-matchers'
end

group :doc do
  gem 'yard', require: false
end
