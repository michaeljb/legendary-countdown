require_relative 'villain_deck_set'

# Base class for Villain Groups.
class VillainGroup < VillainDeckSet
  def initialize(scheme, mastermind)
    @scheme = scheme
    @mastermind = mastermind
  end
end
