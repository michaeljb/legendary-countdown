# Setup: 8 Twists. Add 10 random Ambition cards to the Villain Deck.
# Special Rules: Ambition cards are Villains with their printed Attack. Add +1
# Attack for each Twist stacked next to the Scheme. They are worth 4
# VP. Whenever an Ambition Villain escapes, do its Ambition effect.
# Twist 1-5: Stack this Twist next to the Scheme. Play another card from the
# Villain Deck.
# Twist 6: Each Ambition Villain in the city escapes.
# Evil Wins: When 4 Ambition Villains escape.
class SinisterAmbitions < Scheme
  def villains
    super + 10
  end

  def plays_more_villain_cards
    1
  end

  def required_multipliers
    {
      plays_more_villain_cards => 5
    }
  end
end
