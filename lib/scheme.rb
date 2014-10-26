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
    }
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

  def villain_deck_max_turn_modifier
    0
  end

  def villain_deck_min_turn_modifier
    0
  end

  def max_win_turn_modifier
    0
  end

  def play_master_strike_on_bottom?
    true
  end
end
