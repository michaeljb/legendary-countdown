# Setup: 8 Twists. Villain Deck includes 14 cards for an extra Hero and no
# Bystanders.
class XCutionersSong < Scheme
  def bystanders
    0
  end

  def other
    {
      'Heroes' => 14
    }
  end
end
