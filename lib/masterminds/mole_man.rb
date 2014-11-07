class MoleMan < Mastermind
  def play_more_possible
    {
      # Master of Monsters has Fight: If this is not the final Tactic, reveal
      # the top six cards of the Villain Deck. Play all the Subterranea Villains
      # you revealed. Put the rest on the bottom of the Villain Deck in random
      # order.
      #
      # TODO: make this interact correctly with Henchmen Villain cards; for
      # example, Egghead from the Emissaries of Evil can play another Villain
      # from the Villain Deck, which includes Henchmen, but Mole Man is limited
      # to Subterranea Villains (or whichever Villain Group he is "leading" in
      # Advanced Solo Mode, Legendary: Villains rules); the current
      # implementation applies this count of 6 to Henchmen as well, but there is
      # not yet a known combination where this actually impacts the Villain Deck
      # turn range
      villain: 6
    }
  end
end
