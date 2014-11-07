class XCutionersSong < Scheme
  def bystanders
    0
  end

  # Setup: ... Villain Deck includes 14 cards for an extra Hero and no
  # Bystanders.
  def other
    {
      'Heroes' => 14
    }
  end
end
