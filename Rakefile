require 'rubygems'

namespace :server do
  desc 'Start the Sinatra server on port 4567'
  task :start do
    sh 'ruby lib/app.rb'
  end
end

desc 'Run rubocop and feature tests (with xvfb)'
task :travis do
  sh 'bundle exec rubocop'
  sh 'xvfb-run bundle exec cucumber'
end

desc 'Run rubocop and feature tests'
task :default do
  sh 'bundle exec rubocop'
  sh 'bundle exec cucumber'
end
