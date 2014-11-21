# Commander Tactic - Cerebro Device
#   Fight: Reveal the top three cards of the Adversary Deck. Play any
#   Adversaries you revealed that have "X-Treme Attack".
class ProfessorX < Mastermind
  def play_more_possible
    groups = [
      'Uncanny Avengers',
      'Uncanny X-Men',
      'X-Men First Class'
    ]

    {
      villain: groups.any? { |group| @villain_groups.include?(group) } ? 3 : 0
    }
  end
end
