# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be
# available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task default: :test

task test: [
  :travis_lint, :rubocop, :reek, :rails_best_practices
]

task :travis_lint do
  sh 'travis-lint'
end

task :rubocop do
  sh 'rubocop --rails app/ test/ Gemfile Rakefile'
end

task :reek do
  sh 'reek app/ spec/ Gemfile Rakefile'
end

task :rails_best_practices do
  sh 'rails_best_practices'
end
