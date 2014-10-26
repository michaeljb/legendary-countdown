require 'require_all'
require 'json'
require_relative 'scheme'
require_relative 'max_winning_turn'
require_relative 'turn_range'
require_relative 'villain_group'
require_all File.join(File.dirname(__FILE__), 'schemes', '*.rb')
require_all File.join(File.dirname(__FILE__), 'villain_groups', '*.rb')

class SubmissionHandler
  def initialize(params)
    @scheme = scheme_class(params['scheme']).new(params['playerCount'])

    villains = params['villains']
      .reject { |v| v == 'N/A' }.map { |v| villain_class(v).new }

    @turn_range = TurnRange.new(
        players: params['playerCount'],
        scheme: @scheme,
        mastermind: params['mastermind'],
        villains: villains
      )

    @max_winning_turn = MaxWinningTurn.new(
        turn_range: @turn_range,
        scheme: @scheme,
        mastermind: params['mastermind'],
        villains: villains
      )
  end

  def json
    {
      villain_deck_contents: @scheme.villain_deck_contents,
      villain_deck_empty: @turn_range.hash,
      max_win_turn: @max_winning_turn.turn
    }.to_json
  end

  private

  def tokenize(name)
    Object.const_get(name.split(' ').map(&:capitalize).join)
  end

  def scheme_class(name)
    tokenize(name)
  rescue NameError
    Scheme
  end

  def villain_class(name)
    tokenize(name)
  rescue NameError
    VillainGroup
  end
end
