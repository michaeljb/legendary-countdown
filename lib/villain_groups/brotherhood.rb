# Mystique has "Escape: Mystique becomes a Scheme Twist that takes effect
# immediately."
class Brotherhood < VillainGroup
  def play_more_possible
    return super if @scheme.plays_more_villain_cards == 0
    {
      1 => 2
    }
  end
end
