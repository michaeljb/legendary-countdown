# calculate the maximum winning turn, which is not necessarily the same as when
# the Villain Deck will run out
class MaxWinningTurn
  def initialize(params)
    @turn_range = params[:turn_range]
    @scheme = params[:scheme]
    @mastermind = params[:mastermind]
    @villains = params[:villains]
  end

  def turn
    max_modifiers = [@villains, @scheme].flatten.reduce(0) do |memo, m|
      memo + m.max_win_turn_modifier
    end

    @turn_range.max + max_modifiers
  end
end
