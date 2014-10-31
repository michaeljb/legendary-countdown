# Setup: 30 Shards in the supply. Twists equal to the number of players plus 5.
class UniteTheShards < Scheme
  def twists
    @players + 5
  end
end
