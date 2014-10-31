Feature: Display Contents of Villain Deck
  As a Legendary Online League organizer
  In order to help players have the correct setup
  I want to see the required contents of the Villain Deck

  Scenario Outline:
    Given I am on the page
    And the number of players is <players>
    And the Scheme is <scheme>
    When I press submit
    Then the Villain Deck should contain <twist_count> Scheme Twists
    And the Villain Deck should contain 5 Master Strikes
    And the Villain Deck should contain <villain_count> Villains
    And the Villain Deck should contain <henchmen_count> Henchmen
    And the Villain Deck should contain <bystander_count> Bystanders

    Examples:
    | players | scheme                               | twist_count | villain_count | henchmen_count | bystander_count |

    # "Your First Game" from the Legendary rulebook, pg 3
    |       1 | Unleash the Power of the Cosmic Cube |           8 |             8 |              3 |               1 |
    |       2 | Unleash the Power of the Cosmic Cube |           8 |            16 |             10 |               2 |
    |       3 | Unleash the Power of the Cosmic Cube |           8 |            24 |             10 |               8 |
    |       4 | Unleash the Power of the Cosmic Cube |           8 |            24 |             20 |               8 |
    |       5 | Unleash the Power of the Cosmic Cube |           8 |            32 |             20 |              12 |

    # Midtown Bank Robbery
    |       1 | Midtown Bank Robbery                 |           8 |             8 |              3 |              12 |
