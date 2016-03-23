# Setup: 8 Twists.
#
# Special Rules: Whenever a Hero is KO'd from the HQ, turn that Hero face down
# on that HQ space, representing an Explosion on the Helicarrier. When an HQ
# space has 6 Explosions, that space is Destroyed and can't hold Heroes anymore.
#
# Twist: Stack this Twist next to the Scheme. Then for each Twist in that stack,
# KO the leftmost Hero in the HQ and immediately refill that space.
class DetonateTheHelicarrier < Scheme
  # The card does not say evil wins on Twist 8, but the HQ is guaranteed to be
  # destroyed by then.
  def evil_wins_on_twist
    8
  end
end
