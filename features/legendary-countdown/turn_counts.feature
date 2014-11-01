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
    | players | scheme | mastermind | villains | empty | max_win |

    # "Your First Game", from Legendary Rulebook, pg 3
    | 1 | Unleash the Power of the Cosmic Cube | Red Skull | HYDRA                                     | 14-21 | 19 |
    | 2 | Unleash the Power of the Cosmic Cube | Red Skull | HYDRA,Spider-Foes                         | 35-41 | 40 |
    | 3 | Unleash the Power of the Cosmic Cube | Red Skull | HYDRA,Spider-Foes,Skrulls                 | 49-55 | 54 |
    | 4 | Unleash the Power of the Cosmic Cube | Red Skull | HYDRA,Spider-Foes,Skrulls                 | 59-65 | 64 |
    | 5 | Unleash the Power of the Cosmic Cube | Red Skull | HYDRA,Spider-Foes,Skrulls,Masters of Evil | 71-77 | 76 |

    # All "interesting" combos of Schemes/Masterminds/Villians for 1 player with
    # just the base set; in addition to those cards that have some interesting
    # effect on the turn count, use The Legacy Virus for an "uninteresting"
    # Scheme, Loki for an uninteresting Mastermind, and Enemies of Asgard for an
    # uninteresting Villain Group
    | 1 | The Legacy Virus | Loki     | Enemies of Asgard | 20-21 | 21 |
    | 1 | The Legacy Virus | Loki     | Brotherhood       | 20-21 | 21 |
    | 1 | The Legacy Virus | Loki     | HYDRA             | 14-21 | 21 |
    | 1 | The Legacy Virus | Loki     | Radiation         | 18-19 | 19 |
    | 1 | The Legacy Virus | Dr. Doom | Enemies of Asgard | 20-21 | 22 |
    | 1 | The Legacy Virus | Dr. Doom | Brotherhood       | 20-21 | 22 |
    | 1 | The Legacy Virus | Dr. Doom | HYDRA             | 14-21 | 22 |
    | 1 | The Legacy Virus | Dr. Doom | Radiation         | 18-19 | 20 |
    # | 1 | Midtown Bank Robbery                 | Loki     | Enemies of Asgard | | |
    # | 1 | Midtown Bank Robbery                 | Loki     | Brotherhood       | | |
    # | 1 | Midtown Bank Robbery                 | Loki     | HYDRA             | | |
    # | 1 | Midtown Bank Robbery                 | Loki     | Radiation         | | |
    # | 1 | Midtown Bank Robbery                 | Dr. Doom | Enemies of Asgard | | |
    # | 1 | Midtown Bank Robbery                 | Dr. Doom | Brotherhood       | | |
    # | 1 | Midtown Bank Robbery                 | Dr. Doom | HYDRA             | | |
    # | 1 | Midtown Bank Robbery                 | Dr. Doom | Radiation         | | |
    # | 1 | Negative Zone Prison Breakout        | Loki     | Enemies of Asgard | | |
    # | 1 | Negative Zone Prison Breakout        | Loki     | Brotherhood       | | |
    # | 1 | Negative Zone Prison Breakout        | Loki     | HYDRA             | | |
    # | 1 | Negative Zone Prison Breakout        | Loki     | Radiation         | | |
    # | 1 | Negative Zone Prison Breakout        | Dr. Doom | Enemies of Asgard | | |
    # | 1 | Negative Zone Prison Breakout        | Dr. Doom | Brotherhood       | | |
    # | 1 | Negative Zone Prison Breakout        | Dr. Doom | HYDRA             | | |
    # | 1 | Negative Zone Prison Breakout        | Dr. Doom | Radiation         | | |
    # | 1 | Portals to Dark Dimension            | Loki     | Enemies of Asgard | | |
    # | 1 | Portals to Dark Dimension            | Loki     | Brotherhood       | | |
    # | 1 | Portals to Dark Dimension            | Loki     | HYDRA             | | |
    # | 1 | Portals to Dark Dimension            | Loki     | Radiation         | | |
    # | 1 | Portals to Dark Dimension            | Dr. Doom | Enemies of Asgard | | |
    # | 1 | Portals to Dark Dimension            | Dr. Doom | Brotherhood       | | |
    # | 1 | Portals to Dark Dimension            | Dr. Doom | HYDRA             | | |
    # | 1 | Portals to Dark Dimension            | Dr. Doom | Radiation         | | |
    # | 1 | Unleash the Power of the Cosmic Cube | Loki     | Enemies of Asgard | | |
    # | 1 | Unleash the Power of the Cosmic Cube | Loki     | Brotherhood       | | |
    # | 1 | Unleash the Power of the Cosmic Cube | Loki     | HYDRA             | | |
    # | 1 | Unleash the Power of the Cosmic Cube | Loki     | Radiation         | | |
    # | 1 | Unleash the Power of the Cosmic Cube | Dr. Doom | Enemies of Asgard | | |
    # | 1 | Unleash the Power of the Cosmic Cube | Dr. Doom | Brotherhood       | | |
    # | 1 | Unleash the Power of the Cosmic Cube | Dr. Doom | HYDRA             | | |
    # | 1 | Unleash the Power of the Cosmic Cube | Dr. Doom | Radiation         | | |
