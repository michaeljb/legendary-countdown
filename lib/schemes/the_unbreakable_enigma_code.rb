# Setup: 6 Twists.
# Twists 1-5: Put a card from the Hero Deck face down next to the scheme as part
# of the "Enigma Code." Mix up those cards face-down.
# Twist 6: Evil Wins!
# Special Rules: Whenever you fight a Villain, you may pay 1 Recruit to look at
# one of the face-down Enigma Cards. When you fight the Mastermind, first guess
# the color of each Enigma card, and then reveal them. If you guessed them
# right, fight the Mastermind as normal. If not, your turn ends, and mix up the
# Enigma cards face-down.
class TheUnbreakableEnigmaCode < Scheme
  def twists
    6
  end

  def evil_wins_on_twist
    6
  end
end
