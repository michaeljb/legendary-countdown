class Hydra < VillainGroup
  # defeating all 3 copies of Endless Armies of HYDRA can really speed things up
  def villain_deck_min_turn_modifier
    -6
  end
end
