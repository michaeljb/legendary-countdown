# Drax the Destroyer (2 copies)
# Fight: Reveal the top card of your deck. KO it or put it back. Fateful
# Resurrection.
# Attack: 5
# VP: 4
class GuardiansOfKnowhere < VillainGroup
  def play_more_possible
    {
      any: 2
    }
  end
end
