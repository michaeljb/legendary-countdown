class UnleashThePowerOfTheCosmicCube < Scheme
  # In this Scheme, Evil wins when the final twist is played, so the Heroes
  # cannot win on the turn when the last card from the Villain Deck is played.
  def max_win_turn_modifier
    -1
  end

  # Master Strike on bottom can't be played if playing the nth Scheme Twist is a
  # win condition
  def villain_deck_play_master_strike_on_bottom?
    false
  end

  def villain_deck_can_win_and_play_last_card?
    false
  end
end
