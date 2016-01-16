require_relative 'villain_deck_set'

# Class to handle Masterminds and their Master Strikes. Mainly the Master
# Strikes do things differently in Advanced Solo Mode, and some Masterminds can
# influence the rate at which the Villain Deck runs out.
class Mastermind < VillainDeckSet
  def initialize(**opts)
    @players        = opts[:players]
    @villain_groups = opts[:villain_groups] || []
    @scheme_class   = opts[:scheme_class]
  end

  # can be 2 if playing non-Advanced Solo Mode
  def master_strikes
    strikes = 5

    # Crush Them With My Bare Hands
    # Setup: 5 Twists.
    # Twist: This Twist becomes a Master Strike that takes effect immediately.
    strikes += (@scheme_class == CrushThemWithMyBareHands ? 5 : 0)

    strikes
  end

  def evil_wins_on_master_strike
    # Crush Them With My Bare Hands
    # Evil Wins: When 8 Master Strikes have taken effect.
    @scheme_class == CrushThemWithMyBareHands ? 8 : nil
  end

  # in Advanced Solo Mode, after playing a Master Strike, you must play
  # another card from the Villain Deck
  def plays_more_villain_cards
    return 1 if @players == 1
    super
  end
end
