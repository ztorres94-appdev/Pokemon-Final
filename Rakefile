# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

require "bundler/gem_tasks"
require 'rake/testtask'
require_relative 'lib/pokemon_tcg_sdk'

task :default => :test

Rake::TestTask.new do |t|
  t.libs << "lib"
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end

Pokemon.configure do |config|
  config.api_key = "d1fdfe39-b35c-400c-bc18-f0059cfe3176"
end

task :card do
  card = Pokemon::Card.find('xy1-1')
  puts card.tcgplayer.updated_at
end

Rails.application.load_tasks
