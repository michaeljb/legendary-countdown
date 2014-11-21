# Command Strike: Reveal the top three cards of the Adversary Deck...play a Plot
# Twist from among the cards you revealed.
class DrStrange < Mastermind
  def play_more_possible
    {
      twist: master_strikes
    }
  end
end
