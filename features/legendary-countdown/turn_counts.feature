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
    When I press submit
    Then the Villain Deck should empty in <empty> turns
    And the maximum winning turn should be <max_win>

    Examples:
    | players | scheme                               | mastermind | villains                                  | empty | max_win |
    |       1 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA                                     | 14-21 |      19 |
    |       2 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA,Spider-Foes                         | 35-41 |      40 |
    |       3 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA,Spider-Foes,Skrulls                 | 49-55 |      54 |
    |       4 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA,Spider-Foes,Skrulls                 | 59-65 |      64 |
    |       5 | Unleash the Power of the Cosmic Cube | Red Skull  | HYDRA,Spider-Foes,Skrulls,Masters of Evil | 71-77 |      76 |
    |       1 | Unleash the Power of the Cosmic Cube | Galactus   | Skrulls                                   | 20-21 |      19 |
    |       1 | Midtown Bank Robbery                 | Galactus   | Skrulls                                   | 23-24 |      23 |
    |       1 | The Legacy Virus                     | Galactus   | Skrulls                                   | 20-21 |      20 |
    |       1 | The Legacy Virus                     | Red Skull  | Skrulls                                   | 20-21 |      21 |
