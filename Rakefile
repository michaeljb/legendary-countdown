require 'rubygems'

namespace :server do
  desc 'Start the Sinatra server on port 4567'
  task :start do
    sh 'ruby lib/app.rb'
  end
end

desc 'Run rubocop and feature tests (with xvfb)'
task :travis do
  sh 'bundle exec rubocop --display-cop-names'
  sh 'xvfb-run bundle exec cucumber'
end

desc 'Run rubocop and feature tests'
task :default do
  sh 'bundle exec rubocop --display-cop-names --auto-correct'
  sh 'bundle exec cucumber'
end

desc 'git push to both github and heroku'
task push: :default do
  sh 'git push origin master'
  sh 'git push heroku master'
end
