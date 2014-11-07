class EmissariesOfEvil < VillainGroup
  def play_more_possible
    {
      # Gladiator (2 copies) has Ambush: Reveal the top card of the Villain
      # Deck. If it's a Bystander, Gladiator captures it.
      bystander: 2,

      # Electro (2 copies) has Ambush: Reveal the top card of the Villain
      # Deck. If it's a Scheme Twist, play it.
      twist: 2,

      # Egghead (2 copies) has Ambush: Reveal the top card of the Villain
      # Deck. If it's a Villain, play it.
      villain: 2
    }
  end
end
