# The Leader (2 copies) has "Ambush: Play the top card of the Villain Deck."
class Radiation < VillainGroup
  def play_more_required
    {
      1 => 2
    }
  end
end
