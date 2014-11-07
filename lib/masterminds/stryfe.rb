class Stryfe < Mastermind
  def play_more_possible
    {
      # Furious Wrath has Fight: Reveal the top six cards of the Villain
      # Deck. Play all the Master Strikes you revealed.
      master_strike: 6
    }
  end
end
