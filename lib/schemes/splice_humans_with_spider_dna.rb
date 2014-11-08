class SpliceHumansWithSpiderDna < Scheme
  # Evil Wins: ... or the Villain Deck runs out.
  def evil_wins_when_villain_deck_empty?
    true
  end

  # Twist: Each player puts a Sinister Six Villain from their Victory Pile on
  # top of the Villain Deck.
  def additional_max_empty_turns
    twists * (@players - 1)
  end

  # Twist: ... No matter how many players did so, play a single card from the
  # Villain Deck.
  def play_more_possible
    {
      any: twists
    }
  end
end
