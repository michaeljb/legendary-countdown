# Setup: 10 Twists. Earth's Fear Level starts at 8. The number of Allies in the
# Lair is always equal to the Fear Level.
# Twist: KO an Ally from the Liar. The Fear Level goes down by 1.
# Good Wins: When the Fear Level is 0.
class FearItself < Scheme
  def twists
    10
  end

  def evil_wins_on_twist
    8
  end
end
