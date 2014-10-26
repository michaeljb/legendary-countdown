require 'sinatra'
require 'sinatra/base'
require 'yaml'

class LegendaryCountdown < Sinatra::Application
  set :setup_choices, YAML.load_file(
      File.join(File.dirname(__FILE__), 'conf', 'setup_choices.yaml')
    )

  set :submit_js, File.read(
          File.join(File.dirname(__FILE__), 'js', 'submit.js')
        )

  get '/' do
    locals = {
      submit: settings.submit_js
    }
    erb :index, locals: locals.merge(settings.setup_choices)
  end

  post '/submit' do
    [
      'Villain Deck contents: 8 Scheme Twists, 5 Master Strikes, 8 Villains, 3 Henchmen, 1 Bystander',
      'The Villain Deck will empty in 14-20 turns',
      'Maximum Winning Turn Count: 19'
    ].join
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
