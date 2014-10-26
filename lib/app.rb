require 'sinatra'
require 'sinatra/base'
require 'yaml'

class LegendaryCountdown < Sinatra::Application
  set :setup_choices, YAML.load_file(
      File.join(File.dirname(__FILE__), 'conf', 'setup_choices.yaml')
    )

  get '/' do
    erb :index, locals: settings.setup_choices
  end

  post '/submit' do
    "Your Mastermind was #{params['mastermind']}"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
