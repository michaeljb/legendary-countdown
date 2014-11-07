class Kingpin < Mastermind
  def play_more_possible
    {
      # Criminal Empire has Fight: If this is not the final Tactic, reveal the
      # top three cards of the Villain Deck. Play all the Villains you revealed.
      any: 3
    }
  end
end
