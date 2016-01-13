# Setup: 9 Twists.
class BuildAnArmyOfAnnihilation < Scheme
  def twists
    9
  end

  # Setup: Put 10 extra Annihilation Wave Henchmen in the KO pile.
  def henchmen
    10 + super
  end
end
