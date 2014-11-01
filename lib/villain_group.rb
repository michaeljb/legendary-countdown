require_relative 'villain_deck_set'

class VillainGroup < VillainDeckSet
  def initialize(scheme, mastermind)
    @scheme = scheme
    @mastermind = mastermind
  end
end
