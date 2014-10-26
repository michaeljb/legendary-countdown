# The range of turns indicating when the last card from Villain Deck will be
# played. This class takes info from the Scheme, Villain Groups, and Mastermind
# Tactics to determine when the Villain Deck might be depleted.
class TurnRange
  def initialize(params)
    @players = params[:players].to_i
    @scheme = params[:scheme]
    @villains = params[:villains]
    @mastermind = params[:mastermind]
  end

  def min
    base_max + @villains.reduce(0) { |memo, v| memo + v.villain_deck_min_turn_modifier }
  end

  def max
    base_max + master_strike_turns + @scheme.villain_deck_max_turn_modifier
  end

  def hash
    {
      min: min,
      max: max
    }
  end

  private

  def base_max
    @scheme.bystanders + @scheme.henchmen + @scheme.twists + @scheme.villains
  end

  def master_strike_turns
    return 5 unless @players == 1

    return 1 if @scheme.play_master_strike_on_bottom?
    0
  end

end
