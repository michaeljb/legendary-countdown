class Brotherhood < VillainGroup
  def play_more_possible
    return super if @scheme.plays_more_villain_cards == 0
    {
      # Nighthawk (2 copies)
      # While in the Sewers, Rooftops or Bridge, Nighthawk gains +4 Attack.
      # Escape: Nighthawk becomes a Scheme Twist that takes effect immediately.
      any: 2
    }
  end
end
