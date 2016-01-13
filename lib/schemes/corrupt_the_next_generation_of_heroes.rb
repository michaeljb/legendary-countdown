class CorruptTheNextGenerationOfHeroes < Scheme
  # Setup: Add 10 Sidekicks to the Villain Deck.
  def villains
    10 + super
  end
end
