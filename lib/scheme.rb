# Base class for all Schemes to inherit from.
class Scheme
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

  def villain_deck_max_turn_modifier
    0
  end

  def villain_deck_min_turn_modifier
    0
  end

  def villain_deck_can_win_and_play_last_card?
    true
  end

  def villain_deck_play_master_strike_on_bottom?
    true
  end

  def max_win_turn_modifier
    0
  end

  # Can the last Master Strike be played with the Heroes still winning? e.g.,
  # against Galactus the last Master Strike can be played (villain deck's max
  # turns to empty), but we cannot win on that turn, since Galactus's fifth
  # Master Strike is a win condition
  def win_deck_play_master_strike_on_bottom?
    true
  end
end
