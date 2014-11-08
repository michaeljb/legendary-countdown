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
    total = @turn_range.max

    if @scheme.evil_wins_when_villain_deck_empty?

      # if Evil Wins when the Villain Deck is empty, you simply have to win one
      # turn before it runs out
      total -= 1

    elsif (twist_on = @scheme.evil_wins_on_twist).nil?

      # if cards are at the bottom that play more cards, make sure none of them
      # being played is a guaranteed lose condition; for now this only applies
      # to Galactus's Master Strikes
      if @turn_range.any_play_more
        strike_on = @mastermind.evil_wins_on_master_strike
        total -= 1 unless strike_on.nil?
      end

    else

      total -= (@scheme.twists - twist_on + 1)

      # any play-more cards at the bottom cannot be played if evil wins on turn
      # X, so remove the bonus turn that was added to the max
      total -= 1 if @turn_range.any_play_more

    end

    # add extra turns from cards like "Secrets of Time Travel"
    total += @mastermind.bonus_turns

    total
  end
end
