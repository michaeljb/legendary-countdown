# The range of turns indicating when the last card from Villain Deck will be
# played. This class takes info from the Scheme, Villain Groups, and Mastermind
# Tactics to determine when the Villain Deck might be depleted.
class TurnRange
  attr_reader :any_play_more

  def initialize(params)
    @players = params[:players].to_i
    @scheme = params[:scheme]
    @mastermind = params[:mastermind]
    @villains = params[:villains]
  end

  def min
    total = max - @scheme.additional_max_empty_turns

    # take off the bonus turn from cards that play more cards being placed at
    # the bottom
    total -= 1 if @any_play_more

    # the first card each scheme twist plays is already accounted for in `max`,
    # so subtract 1 to find how the min is effected
    if @scheme.plays_more_villain_cards > 0
      total -= (@scheme.twists * (@scheme.plays_more_villain_cards - 1))
    end


    count = {
      bystander: @scheme.bystanders,
      master_strike: @mastermind.master_strikes,
      twist: @scheme.twists,
      villain: @scheme.henchmen + @scheme.villains
    }

    play_more_possible = {
      any: 0,
      bystander: 0,
      master_strike: 0,
      twist: 0,
      villain: 0
    }

    [@mastermind, @villains, @scheme].flatten.each do |enemy|
      next if enemy.play_more_possible.size == 0

      [:any, :bystander, :master_strike, :twist, :villain].each do |card|
        play_more_possible[card] += (enemy.play_more_possible[card] || 0)
      end
    end

    total -= play_more_possible[:any]

    [:bystander, :master_strike, :twist, :villain].each do |card|
      total -= [count[card], play_more_possible[card]].min
    end

    total
  end

  def max
    total = total_villain_deck_cards

    @any_play_more = false

    # the max turn for the villain deck to run out is reduced by one per twist
    # if that twist plays any more cards from the Villain Deck
    if @scheme.plays_more_villain_cards > 0
      total -= @scheme.twists
      @any_play_more = true
    end

    if @mastermind.plays_more_villain_cards > 0
      total -= @mastermind.master_strikes
      @any_play_more = true
    end

    # sometimes Schemes can change the abilities of an enemy, like Organized
    # Crime Wave modifying Maggia Goons
    [@scheme, @mastermind, @villains].flatten.each do |enemy|
      next if enemy.play_more_required == {}

      total -= enemy.play_more_required.reduce(0) { |a, (k, v)| a + (k * v) }
      @any_play_more = true
    end

    total += @scheme.additional_max_empty_turns

    # if one or more of the required multipliers are at the bottom of the
    # Villain Deck, we get one more turn than you might expect
    total += 1 if @any_play_more

    total
  end

  def hash
    {
      min: min,
      max: max
    }
  end

  private

  def total_villain_deck_cards
    @scheme.bystanders +
      @scheme.henchmen +
      @scheme.twists +
      @scheme.villains +
      @mastermind.master_strikes +
      @scheme.other.reduce(0) { |a, (k, v) | a + v }
  end
end
