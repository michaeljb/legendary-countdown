Feature: Display Contents of Villain Deck
  As a Legendary Online League organizer
  In order to help players have the correct setup
  I want to see the required contents of the Villain Deck

  Scenario Outline:
    Given there are <players> players
    And the Scheme is <scheme>
    And the Mastermind is <mastermind>
    And the Villain Group(s) is/are <villains>
    And the Henchmen Group(s) is/are <henchmen>
    Then the Villain Deck should contain <twist_count> Scheme Twists
    And the Villain Deck should contain <master_strike_count> Master Strikes
    And the Villain Deck should contain <villain_count> Villains
    And the Villain Deck should contain <henchmen_count> Henchmen
    And the Villain Deck should contain <bystander_count> Bystanders

    Examples:
    | players | scheme                               | mastermind | villains | henchmen  | twist_count | master_strike_count | villain_count | henchmen_count | bystander_count |
    |       1 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA    | Sentinels |           8 |                   5 |             8 |              3 |               1 |
