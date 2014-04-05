source 'https://rubygems.org'

gem 'rails', '~> 4.1.0.rc2'

# Use SCSS for stylesheets
gem 'sass'
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster.
gem 'turbolinks'

group :production do
  gem 'mysql2'
end

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

group :development do
  # Use CoffeeScript source maps
  gem 'coffee-rails-source-maps'
end

group :test do
  # Style checkers
  gem 'travis-lint'
  gem 'rubocop'

  # Testing
  gem 'spring'
end
