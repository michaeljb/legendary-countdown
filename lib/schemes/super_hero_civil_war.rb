# Setup: For 2-3 players, use 8 Twists. For 4-5 players, use 5 Twists.
class SuperHeroCivilWar < Scheme
  def twists
    {
      1 => 8,
      2 => 8,
      3 => 8,
      4 => 5,
      5 => 5
    }[@players]
  end
end
