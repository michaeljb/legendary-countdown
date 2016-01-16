class SmashTwoDimensionsTogether < Scheme
  # Setup: Add an extra Villain Group.
  def villains
    super + 8
  end

  # Setup: Put the Villain Deck on the Bank space.
  # Special Rules: The Sewers and Bank do not exist, so the city is only 3
  # spaces.
  def city_spaces
    3
  end

  # Setup: 8 Twists.
  # Twist 1-7: Play two cards from the Villain Deck.
  def required_multipliers
    {
      2 => 7
    }
  end
end
