# Setup: Put the Thor Adversary next to this Plot.
class CrownThorKingOfAsgard < Scheme
  def villains
    super - (@villain_groups.include?('Avengers') ? 1 : 0)
  end
end
