require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end

namespace :server do
  desc 'Start the Sinatra server on port 4567'
  task :start do
    sh "ruby lib/app.rb"
  end
end
