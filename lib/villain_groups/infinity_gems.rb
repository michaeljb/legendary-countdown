class InfinityGems < VillainGroup
  # Time Gem has "Artifact - When you play this Artifact, take another turn
  # after this one. Use this ability only if this is the fist time any player
  # has played the Time Gem this game."
  def bonus_turns
    1
  end

  # Time Gem has "Ambush: Play another card from the Villain Deck."
  def play_more_required
    {
      1 => 1
    }
  end
end
