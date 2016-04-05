# Pepper Potts in Rescue Armor
# Fight: A Bystander from the Bystander Stack becomes a Command Strike that
# takes effect immediately.
class UruEnchantedIronMan < Mastermind
  def play_more_possible
    return super if plays_more_villain_cards == 0
    {
      any: 1
    }
  end
end
