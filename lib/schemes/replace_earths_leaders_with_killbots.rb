class ReplaceEarthsLeadersWithKillbots < Scheme
  # Setup: ... 18 total Bystanders in the Villain Deck.
  # Special Rules: Bystanders in the Villain Deck count as Killbot Villains
  def other
    {
      'Killbots (Bystander cards)' => 18
    }
  end

  # while there are Bystander cards in the Villain Deck, they are not actually
  # Bystanders
  def bystanders
    0
  end

  # Setup: 5 Twists.
  def twists
    5
  end
end
