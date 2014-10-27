class Hydra < VillainGroup
  # Endless Armies of HYDRA (3 copies) has "Fight: Play the top two cards of the
  # Villain Deck."
  def villain_deck_min_turn_modifier
    -6
  end
end
