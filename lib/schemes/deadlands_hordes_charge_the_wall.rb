# Setup: 8 Twists. Add an extra Villain Group.
# Twist: Each Villain simultaneously charges two spaces. Play another card from
# the Villain Deck.
# Evil Wins: When the number of escaped Villains equals the number of players
# plus 6.
class DeadlandsHordesChargeTheWall < Scheme
  def villains
    super + 8
  end

  def play_more_required
    {
      1 => 8
    }
  end
end
