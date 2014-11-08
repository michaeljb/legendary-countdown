class SpliceHumansWithSpiderDna < Scheme
  # Evil Wins: ... or the Villain Deck runs out.
  def evil_wins_when_villain_deck_empty?
    true
  end

  # Twist: Each player puts a Sinister Six Villain from their Victory Pile on
  # top of the Villain Deck. No matter how many players did so, play a single
  # card from the Villain Deck.
  #
  # Max turn case: every player puts a Sinister Six Villain back on top of the
  # Villain Deck every time
  # Min turn case: no player ever puts back a Sinister Six Villain
  def play_more_possible
    {
      any: twists
    }
  end
end
