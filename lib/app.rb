require 'sinatra'
require 'yaml'

opts = YAML.load_file(
    File.join(File.dirname(__FILE__), 'conf', 'options.yaml')
  )

get '/' do
  erb :index, locals: opts
end

post '/submit' do
  "Your Mastermind was #{params['mastermind']}"
end
