# See also mastermind.rb
class CrushThemWithMyBareHands < Scheme
  # Setup: 5 Twists. (but they become master strikes)
  def twists
    0
  end

  # Setup: 5 Twists.
  def villain_deck_contents
    super.merge('Scheme Twists' => 5)
  end

  # Setup: If playing solo, add an extra Villain Group.
  def villains
    super + (@players == 1 ? 8 : 0)
  end
end
