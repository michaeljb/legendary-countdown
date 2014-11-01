require_relative 'villain_deck_set'

class Mastermind < VillainDeckSet
  def initialize(players)
    @players = players
  end

  # can be 2 if playing non-Advanced Solo Mode
  def master_strikes
    5
  end

  def evil_wins_on_master_strike
    nil
  end

    # in Advanced Solo Mode, after playing a Master Strike, you must play
    # another card from the Villain Deck
  def plays_more_villain_cards
    return 1 if @players == 1
    super
  end
end
