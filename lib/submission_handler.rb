require 'require_all'
require 'json'
require_relative 'scheme'
require_relative 'mastermind'
require_relative 'max_winning_turn'
require_relative 'turn_range'
require_relative 'villain_deck_set'
require_relative 'villain_group'
require_all File.join(File.dirname(__FILE__), 'masterminds', '*.rb')
require_all File.join(File.dirname(__FILE__), 'schemes', '*.rb')
require_all File.join(File.dirname(__FILE__), 'villain_groups', '*.rb')

# takes in the submitted parameters and returns all the calculated info
class SubmissionHandler
  def initialize(params)
    players = params['playerCount'].to_i

    @notes = []

    @scheme = scheme_class(params['scheme']).new(
      players: params['playerCount'],
      villain_groups: params['villains']
    )

    mastermind = mastermind_class(params['mastermind']).new(
      players: players,
      villain_groups: params['villains'],
      scheme: @scheme
    )

    villains = params['villains'].reject { |v| v == 'N/A' }.map do |v|
      villain_class(v).new(@scheme, mastermind)
    end

    villains.each { |v| @notes.push(v.notes) }
    @notes.push(@scheme.notes)

    @turn_range = TurnRange.new(
        players: players,
        scheme: @scheme,
        mastermind: mastermind,
        villains: villains
      )

    @max_winning_turn = MaxWinningTurn.new(
        turn_range: @turn_range,
        scheme: @scheme,
        mastermind: mastermind,
        villains: villains
      )
  end

  def json
    villain_deck_empty = @turn_range.hash
    max_win_turn = @max_winning_turn.turn

    if villain_deck_empty[:min] == Float::INFINITY
      villain_deck_empty = {
        min: 'Infinity',
        max: 'Infinity'
      }
    end

    max_win_turn = 'Infinity' if max_win_turn == Float::INFINITY

    {
      villain_deck_contents: @scheme.villain_deck_contents,
      villain_deck_empty: villain_deck_empty,
      max_win_turn: max_win_turn,
      notes: @notes.flatten.compact
    }.to_json
  end

  private

  def tokenize(name)
    name.gsub!('-', ' ')
    name.gsub!("'", '')
    name.gsub!('.', '')
    Object.const_get(name.split(' ').map(&:capitalize).join)
  end

  def mastermind_class(name)
    tokenize(name)
  rescue
    Mastermind
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
