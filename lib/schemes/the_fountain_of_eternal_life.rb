# The Fountain of Eternal Life
# Setup: 8 Twists. (1 player: 4 Twists.)
# Special Rules: All Villains and Mastermind Tactics have "Fight: Fateful
# Resurrection."
# Twist: A Villain from your Victory Pile enters the Sewers. Put this Twist on
# the bottom of the Villain Deck.
# Evil Wins: When the number of escaped Villains is 3 times the number of
# players.
class TheFountainOfEternalLife < Scheme
  def twists
    @players == 1 ? 4 : 8
  end

  def unlimited_turns
    true
  end
end
