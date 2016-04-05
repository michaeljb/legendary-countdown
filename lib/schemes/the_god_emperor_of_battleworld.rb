# Setup: 8 Twists.
# Twist 1: This Scheme ascends to becomes a new 9-Attack "God-Emperor"
# Mastermind worth 9 VP. It has "Master Strike: Each player with exactly six
# cards in hand reveals a Tech Hero or puts two cards from their hand on top of
# their deck."
# Twist 2-6: Stack this Twist next to the Scheme. The God-Emperor gets another
# +2 Attack.
# Twist 7: If the God-Emperor lives, it KOs all other Masterminds.
# Twist 8: Evil wins! (If any Mastermind still lives.)
class TheGodEmperorOfBattleworld < Scheme
  def evil_wins_on_twist
    8
  end
end
