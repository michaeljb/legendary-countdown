# Setup: 8 Twists. Include 10 Maggia Goons as one of the Henchman Groups.
class OrganizedCrimeWave < Scheme
  def henchmen
    return 10 if @players == 1
    super
  end
end
