# Sonic Scream
# Fight: Reveal the top eight cards of the Villain Deck. Put all the Bystanders
# you revealed into the Escape pile. Put the rest on the bottom of the Villain
# Deck in random orders.
class SpiderQueen < Mastermind
  def play_more_possible
    {
      bystander: 8
    }
  end
end
