class Marauders < VillainGroup
  def play_more_possible
    {
      # Chimera (2 copies) has Ambush: Reveal the top three cards of the Villain
      # Deck. Chimera captures all the Bystander cards you revealed.
      bystander: 6
    }
  end
end
