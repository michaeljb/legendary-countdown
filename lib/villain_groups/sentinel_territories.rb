class SentinelTerritories < VillainGroup
  def play_more_possible
    {
      # Colossus of Future Past has "Fight: Colossus alters the future: Don't
      # play a Villain card at the beginning of next turn.
      any: -2
    }
  end
end
