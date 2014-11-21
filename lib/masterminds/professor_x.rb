# Commander Tactic - Cerebro Device
#   Fight: Reveal the top three cards of the Adversary Deck. Play any
#   Adversaries you revealed that have "X-Treme Attack".
class ProfessorX < Mastermind
  def play_more_possible
    {
      villain: 3
    }
  end
end
