class Galactus < Mastermind
  # Master Strike: Destroy the city space closest to Galactus.
  # Galactus Wins: When the city is destroyed.
  def evil_wins_on_master_strike
    @scheme.city_spaces
  end
end
