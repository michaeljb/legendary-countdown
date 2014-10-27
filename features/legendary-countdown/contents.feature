Feature: Display Contents of Villain Deck
  As a Legendary Online League organizer
  In order to help players have the correct setup
  I want to see the required contents of the Villain Deck

  Scenario Outline:
    Given I am on the page
    And the number of players is <players>
    And the Scheme is <scheme>
    And the Mastermind is <mastermind>
    And the Villain Group(s) is/are <villains>
    And the Henchmen Group(s) is/are <henchmen>
    When I press submit
    Then the Villain Deck should contain <twist_count> Scheme Twists
    And the Villain Deck should contain <master_strike_count> Master Strikes
    And the Villain Deck should contain <villain_count> Villains
    And the Villain Deck should contain <henchmen_count> Henchmen
    And the Villain Deck should contain <bystander_count> Bystanders

    Examples:
    | players | scheme                               | mastermind | villains                                  | henchmen              | twist_count | master_strike_count | villain_count | henchmen_count | bystander_count |

    # "Your First Game" from the Legendary rulebook, pg 3
    |       1 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA                                     | Sentinels             |           8 |                   5 |             8 |              3 |               1 |
    |       2 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA,Spider-Foes                         | Sentinels             |           8 |                   5 |            16 |             10 |               2 |
    |       3 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA,Spider-Foes,Skrulls                 | Sentinels             |           8 |                   5 |            24 |             10 |               8 |
    |       4 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA,Spider-Foes,Skrulls                 | Sentinels,Hand Ninjas |           8 |                   5 |            24 |             20 |               8 |
    |       5 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA,Spider-Foes,Skrulls,Masters of Evil | Sentinels,Hand Ninjas |           8 |                   5 |            32 |             20 |              12 |

    # Adding Midtown Bank Robbery
    |       1 | Midtown Bank Robbery                 | Magneto    | Brotherhood                               | Sentinels             |           8 |                   5 |             8 |              3 |              12 |
