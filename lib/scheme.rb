require_relative 'villain_deck_set'

# Base class for all Schemes to inherit from.
class Scheme < VillainDeckSet
  def initialize(players)
    @players = players.to_i
  end

  def villain_deck_contents
    {
      'Scheme Twists' => twists,
      'Master Strikes' => 5,
      'Villains' => villains,
      'Henchmen' => henchmen,
      'Bystanders' => bystanders
    }.merge(other)
  end

  def bystanders
    {
      1 => 1,
      2 => 2,
      3 => 8,
      4 => 8,
      5 => 12
    }[@players]
  end

  def henchmen
    {
      1 => 3,
      2 => 10,
      3 => 10,
      4 => 20,
      5 => 20
    }[@players]
  end

  # most schemes have 8 scheme twists in their setup, so use it as a default
  def twists
    8
  end

  def villains
    {
      1 => 8,
      2 => 16,
      3 => 24,
      4 => 24,
      5 => 32
    }[@players]
  end

  # some schemes add other cards to the Villain Deck, like Hero cards taken from
  # the Hero Deck in "Secret Invasion of the Skrull Shapeshifters"
  def other
    {}
  end

  def required_multipliers
    {
      plays_more_villain_cards => twists
    }
  end

  # some schemes have "Twist 8: Evil Wins!", causing the maximum winning turn to
  # be earlier than when the Villain Deck might run out
  def evil_wins_on_twist
    nil
  end

  def evil_wins_when_villain_deck_empty?
    false
  end
end
