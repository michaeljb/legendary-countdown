class FragmentedRealities < Scheme
  # Setup: Add an extra Villain Group.
  def villains
    super + 8
  end

  # Setup: shuffle 2 Twists into each player's Villain Deck.
  def twists
    2
  end

  # Special Rules: The normal city does not exist.
  def city_spaces
    nil
  end

  # Twist: Play two cards from your Villain Deck.
  def plays_more_villain_cards
    2
  end

  def notes
    'The scheme "Fragmented Realities" is currently only implemented for ' \
    'Advanced Solo Mode. Also note, there is no city for Galactus to destroy.'
  end
end
