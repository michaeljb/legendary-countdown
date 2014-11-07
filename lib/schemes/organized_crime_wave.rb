
class OrganizedCrimeWave < Scheme
  # Setup: Include 10 Maggia Goons as one of the Henchman Groups.
  def henchmen
    return 10 if @players == 1
    super
  end

  def play_more_required
    {
      # Special Rules: Goons also have the ability "Ambush: Play another card
      # from the Villain Deck."
      1 => 10
    }
  end
end
