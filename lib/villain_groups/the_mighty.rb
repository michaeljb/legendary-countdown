# Ms. Marvel (1 copy)
# Uru-Enchanted Weapon
# Fight or Fail: If her Uru-Enchanted Weapon revealed a Command Strike or Plot
# Twist, play it.
# Overrun: Each player reveals a Ranged Ally or gains a Bindings.
#
# Red She-Hulk (1 copy)
# Uru-Enchanted Weapon
# Fight or Fail: If her Uru-Enchanted Weapon revealed an Adversary, put that
# Adversary into your Victory Pile.
#
# Spider-Man (1 copy)
# 2 Uru-Enchanted Weapons
# Fight or Fail: Play all the cards revealed by his Uru-Enchanted Weapon that
# are worth 2 VP or less.
#
# Wolverine (1 copy)
# 2 Uru-Enchanted Weapons
# Fight or Fail: Draw two cards.
# Overrun: Each player reveals an Instinct Ally or gains a Bindings. Then put
# Wolverine on top of the Adversary Deck.
class TheMighty < VillainGroup
  def play_more_possible
    {
      any: 4
    }
  end

  def notes
    'Maximum Winning Turn and highest turn for the Adversary/Villain Deck to ' \
    'empty increases by 1 for each time Wolverine Overruns.'
  end
end
