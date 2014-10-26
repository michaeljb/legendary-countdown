require 'require_all'
require 'json'
require_relative 'scheme'
require_all File.join(File.dirname(__FILE__), 'schemes/*.rb')

class SubmissionHandler
  def initialize(params)
    @scheme = scheme_class(params['scheme']).new(params['playerCount'])
  end

  def scheme_class(name)
    Object.const_get(name.split(' ').map(&:capitalize).join)
  rescue NameError
    Scheme
  end

  def json
    {
      villain_deck_contents: @scheme.villain_deck_contents,
      villain_deck_empty: {
        min: 14,
        max: 20
      },
      max_win_turn: 19
    }.to_json
  end
end
