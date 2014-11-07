class Brotherhood < VillainGroup
  def play_more_possible
    return super if @scheme.plays_more_villain_cards == 0
    {
      # Mystique (2 copies) has "Escape: Mystique becomes a Scheme Twist that
      # takes effect immediately."
      any: 2
    }
  end
end
