# A set of cards that goes into the Villain Deck, e.g, Master Strikes,
# Bystanders, or Scheme Twists.
class VillainDeckSet
  def plays_more_villain_cards
    0
  end

  def play_more_possible
    {}
  end

  def play_more_required
    {}
  end

  # can this card provide any additional turns?
  def bonus_turns
    0
  end
end
