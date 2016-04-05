# Setup: 6 Twists.
# Twists 1-3: Add another random Mastermind to the game with one Tactic.
# Twist 6: Evil wins!
class SecretWars < Scheme
  def twists
    6
  end

  def evil_wins_on_twist
    6
  end
end
