# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be
# available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task default: :test

task test: [
  :rubocop, :reek, :rails_best_practices,
  :haml_lint, :scss_lint, :coffeelint, :spec, :bundle_audit
]

task :rubocop do
  sh 'rubocop --rails app/ lib/ db/seeds.rb spec/ Gemfile Rakefile'
end

task :reek do
  sh 'reek app/ lib/ db/seeds.rb spec/ Gemfile Rakefile'
end

task :rails_best_practices do
  sh 'rails_best_practices'
end

task :haml_lint do
  sh 'haml-lint app/views/'
end

task :scss_lint do
  sh 'scss-lint -c config/scss_lint.yml app/assets/stylesheets/'
end

desc 'Generates the YARD API documentation from the Ruby sources.'
task :yard do
  sh 'yard doc -o ./doc/api'
end
