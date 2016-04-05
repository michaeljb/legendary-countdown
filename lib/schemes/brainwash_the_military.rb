# Setup: 7 Twists. Add 12 S.H.I.E.L.D. Officers to the Villain Deck.
# Special Rules: S.H.I.E.L.D. Officers in the Villain Deck are Villains. Their
# Attack is 3 plus the number of Twists stacked next to this Scheme. When you
# defeat a S.H.I.E.L.D. Officer, gain it as a Hero.
# Twist 1-6: Stack this Twists next to the Scheme as a "Traitor Battalion." Play
# another card from the Villain Deck.
# Twist 7: All S.H.I.E.L.D. Officers in the city escape.
# Evil Wins: When 5 S.H.I.E.L.D. Officers escape.
class BrainwashTheMilitary < Scheme
  def twists
    7
  end

  def villains
    super + 12
  end

  def plays_more_villain_cards
    1
  end

  def required_multipliers
    {
      plays_more_villain_cards => 6
    }
  end
end
