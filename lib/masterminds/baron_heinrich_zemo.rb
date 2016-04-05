# Finding Zemo
# Fight: Reveal the top five cards of the Villain Deck. If you revealed any
# Bystanders, KO them and each other player gains a Wound. Put the rest back in
# random order.
class BaronHeinrichZemo < Mastermind
  def play_more_possible
    {
      bystander: 5
    }
  end
end
