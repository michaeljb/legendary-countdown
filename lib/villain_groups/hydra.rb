require_relative '../villain_group'

class Hydra < VillainGroup
  def play_more_possible
    {
      # Endless Armies of HYDRA (3 copies) has "Fight: Play the top two cards of
      # the Villain Deck."
      any: 6
    }
  end
end
