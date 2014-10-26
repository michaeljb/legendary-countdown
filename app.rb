require 'sinatra'
require 'yaml'

opts = YAML.load_file('conf/options.yaml')

get '/' do
  erb :index, locals: opts
end

post '/submit' do
  "Your Mastermind was #{params['mastermind']}"
end
