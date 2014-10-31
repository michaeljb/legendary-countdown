# Twist: Play the top 2 cards of the Villain Deck.
class NegativeZonePrisonBreakout < Scheme
  def henchmen
    {
      2 => 20,
      3 => 20,
      4 => 30,
      5 => 30
    }[@players]
  end
end
