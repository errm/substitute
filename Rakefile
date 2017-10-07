require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "reevoocop/rake_task"

RSpec::Core::RakeTask.new(:spec)
ReevooCop::RakeTask.new(:reevoocop)

task default: %i[spec reevoocop]
task build: %i[spec reevoocop]
task release: %i[spec reevoocop]
