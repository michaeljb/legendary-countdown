require 'sinatra'
require 'sinatra/base'
require 'yaml'
require_relative 'submission_handler'

# This is the server-side for an application that takes the parameters of a
# Legendary game setup (i.e., Scheme/Mastermind/etc.), and tells the user what
# the composition of the Villain should be, how quickly the Villain Deck can run
# out, and the maximum number of turns in which they can achieve victory.
class Countdown < Sinatra::Application
  set :setup_choices, YAML.load_file(
      File.join(File.dirname(__FILE__), 'conf', 'setup_choices.yaml')
    )

  set :submit_js, File.read(
          File.join(File.dirname(__FILE__), 'js', 'submit.js')
        )

  get '/' do
    locals = { submit: settings.submit_js }.merge(settings.setup_choices)
    erb :index, locals: locals
  end

  post '/submit' do
    SubmissionHandler.new(params).json
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
