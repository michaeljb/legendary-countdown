require 'json'
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
    {
      villain_deck_contents: {
        'Scheme Twists' => 8,
        'Master Strikes' => 5,
        'Villains' => 8,
        'Henchmen' => 3,
        'Bystanders' => 1
      },
      villain_deck_empty: {
        min: 14,
        max: 20
      },
      max_win_turn: 19
    }.to_json
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
