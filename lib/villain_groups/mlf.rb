class Mlf < VillainGroup
  def play_more_possible
    return super if @mastermind.plays_more_villain_cards == 0
    {
      # Reignfire (2 copies) has Escape: Reignfire becomes a Master Strike that
      # takes effect immediately.
      master_strike: 2
    }
  end
end
