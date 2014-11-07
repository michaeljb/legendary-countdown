class StealTheWeaponizedPlutonium < Scheme
  # Setup: ... Add an extra Villain Group.
  def villains
    super + 8
  end

  # Twist: ... Either way, play another card from the Villain Deck.
  def plays_more_villain_cards
    1
  end
end
