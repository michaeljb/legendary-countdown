Feature: Display Contents of Villain Deck
  As a Legendary Online League organizer
  In order to help players track turn counts
  I want to know the maximum winning turn and how fast the Villain Deck will run out

  Scenario Outline:
    Given I am on the page
    And the number of players is <players>
    And the Scheme is <scheme>
    And the Mastermind is <mastermind>
    And the Villain Group(s) is/are <villains>
    And the Henchmen Group(s) is/are <henchmen>
    When I press submit
    Then the Villain Deck should empty in <min_empty> to <max_empty> turns
    And the maximum winning turn should be <max_win>

    Examples:
    | players | scheme                               | mastermind | villains                                  | henchmen              | min_empty | max_empty | max_win |

    # "Your First Game" from the Legendary rulebook, pg 3
    |       1 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA                                     | Sentinels             |        14 |        20 |      19 |
    |       2 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA,Spider-Foes                         | Sentinels             |        35 |        41 |      40 |
    |       3 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA,Spider-Foes,Skrulls                 | Sentinels             |        49 |        55 |      54 |
    |       4 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA,Spider-Foes,Skrulls                 | Sentinels,Hand Ninjas |        59 |        65 |      64 |
    |       5 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA,Spider-Foes,Skrulls,Masters of Evil | Sentinels,Hand Ninjas |        71 |        77 |      76 |
