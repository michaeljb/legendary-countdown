class Mysterio < Mastermind
  def play_more_possible
    {
      # Mists of Deception has Fight: If this is not the final Tactic, reveal
      # the top five cards of the Villain Deck. Play all the Master Strikes you
      # revealed.
      master_strike: 5
    }
  end
end
