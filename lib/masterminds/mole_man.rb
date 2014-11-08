class MoleMan < Mastermind
  def play_more_possible
    {
      # Master of Monsters has Fight: If this is not the final Tactic, reveal
      # the top six cards of the Villain Deck. Play all the Subterranea Villains
      # you revealed. Put the rest on the bottom of the Villain Deck in random
      # order.
      villain: 6
    }
  end
end
