# Twists 1-6: An Adversary from the current player's Victory Pile enters the
# Bridge. Then play the top card of the Adversary Deck.
class ResurrectHeroesWithNornStones < Scheme
  def play_more_required
    {
      1 => 6
    }
  end
end
