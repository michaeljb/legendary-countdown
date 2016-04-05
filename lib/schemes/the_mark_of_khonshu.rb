# Setup: 10 Twists. Always include Khonshu Guardians. Add all fourteen cards for
# an extra Hero to the Villain Deck.
# Special Rules: Heroes in the Villain Deck are "Khonshu Guardian" Villains with
# Attack equal to their printed cost. While in the Sewers, Rooftops, or Bridge,
# they are in "wolf form" and have double their Attack. When you defeat one,
# gain it as a Hero.
# Twist: Play two cards from the Villain Deck.
# Evil Wins: When 7 Khonshu Guardians escape.
class TheMarkOfKhonshu < Scheme
  def twists
    10
  end

  def other
    {
      'Hero cards' => 14
    }
  end

  def plays_more_villain_cards
    2
  end
end
