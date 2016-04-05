# Setup: 7 Twists. Add an extra Villain Group.
# Twist: The Axis invades a new country. Put all Villains and Bystanders from
# the city on the bottom of the Villain Deck. The number of city spaces
# changes. Play 2 cards from the Villain Deck. If any Villains escape this
# country, stack a Twist next to the scheme as a "conquered capital."
# Twist 1: Poland: 4 spaces.
# Twist 2: France: 3 spaces.
# Twist 3: USSR: 6 spaces.
# Twist 4: England: 3 spaces.
# Twist 5: USA: 5 spaces.
# Twist 6: Australia: 2 spaces.
# Twist 7: Switzerland: 1 space.
# Evil Wins: When 3 capitals are conquered.
class ChangeTheOutcomeOfWwii < Scheme
  def twists
    7
  end

  def play_more_required
    { 2 => 7 }
  end

  # stuff could get weird here with some Ambush effects
  def additional_max_empty_turns
    [4 + 3 + 6 + 3 + 5 + 2, villains + bystanders].min
  end
end
