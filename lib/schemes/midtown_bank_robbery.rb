class MidtownBankRobbery < Scheme
  # Setup: 8 Twists. 12 total Bystanders in the Villain Deck.
  def bystanders
    12
  end

  # Twist: ... Then play the top card of the Villain Deck.
  def plays_more_villain_cards
    1
  end
end
