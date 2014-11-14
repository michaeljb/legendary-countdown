require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'rubocop/rake_task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = 'features --format pretty'
end

RuboCop::RakeTask.new

namespace :server do
  desc 'Start the Sinatra server on port 4567'
  task :start do
    sh 'ruby lib/app.rb'
  end
end

task default: [:'rubocop:auto_correct', :features]
