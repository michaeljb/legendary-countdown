class MasterOfTyrants < Scheme
  # Setup: Choose 3 other Masterminds, and shuffle their 12 Tactics into the
  # Villain Deck. Those Tactis are "Tyrant Villains" wiht their printed Attack
  # and no abilities.
  def villains
    super + 12
  end
end
