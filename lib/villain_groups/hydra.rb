require_relative '../villain_group'

class Hydra < VillainGroup
  # Endless Armies of HYDRA (3 copies) has "Fight: Play the top two cards of the
  # Villain Deck."

  def play_more_possible
    {
      2 => 3
    }
  end
end
