class MrSinister < Mastermind
  def play_more_possible
    {
      # Master Geneticist has Fight: Reveal the top seven cards of the Villain
      # Deck. Mr. Sinister captures all of the Bystanders you revealed.
      bystander: 7
    }
  end
end
