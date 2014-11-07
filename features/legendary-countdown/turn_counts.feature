Feature: Display Contents of Villain Deck
  As a Legendary Online League organizer
  In order to help players track turn counts
  I want to know the maximum winning turn and how fast the Villain Deck will run out

  Scenario Outline: Villain Deck timer and Maximum Winning Turn
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
    # uninteresting Villain Group. As Negative Zone Prison Breakout is not
    # officially supported for 1 player, ignore it here.
    | 1 | The Legacy Virus                     | Loki     | Enemies of Asgard | 20-21 | 21 |
    | 1 | The Legacy Virus                     | Loki     | Brotherhood       | 20-21 | 21 |
    | 1 | The Legacy Virus                     | Loki     | HYDRA             | 14-21 | 21 |
    | 1 | The Legacy Virus                     | Loki     | Radiation         | 18-19 | 19 |
    | 1 | The Legacy Virus                     | Dr. Doom | Enemies of Asgard | 20-21 | 22 |
    | 1 | The Legacy Virus                     | Dr. Doom | Brotherhood       | 20-21 | 22 |
    | 1 | The Legacy Virus                     | Dr. Doom | HYDRA             | 14-21 | 22 |
    | 1 | The Legacy Virus                     | Dr. Doom | Radiation         | 18-19 | 20 |
    | 1 | Midtown Bank Robbery                 | Loki     | Enemies of Asgard | 23-24 | 24 |
    | 1 | Midtown Bank Robbery                 | Loki     | Brotherhood       | 21-24 | 24 |
    | 1 | Midtown Bank Robbery                 | Loki     | HYDRA             | 17-24 | 24 |
    | 1 | Midtown Bank Robbery                 | Loki     | Radiation         | 21-22 | 22 |
    | 1 | Midtown Bank Robbery                 | Dr. Doom | Enemies of Asgard | 23-24 | 25 |
    | 1 | Midtown Bank Robbery                 | Dr. Doom | Brotherhood       | 21-24 | 25 |
    | 1 | Midtown Bank Robbery                 | Dr. Doom | HYDRA             | 17-24 | 25 |
    | 1 | Midtown Bank Robbery                 | Dr. Doom | Radiation         | 21-22 | 23 |
    | 1 | Portals to Dark Dimension            | Loki     | Enemies of Asgard | 19-20 | 18 |
    | 1 | Portals to Dark Dimension            | Loki     | Brotherhood       | 19-20 | 18 |
    | 1 | Portals to Dark Dimension            | Loki     | HYDRA             | 13-20 | 18 |
    | 1 | Portals to Dark Dimension            | Loki     | Radiation         | 17-18 | 16 |
    | 1 | Portals to Dark Dimension            | Dr. Doom | Enemies of Asgard | 19-20 | 19 |
    | 1 | Portals to Dark Dimension            | Dr. Doom | Brotherhood       | 19-20 | 19 |
    | 1 | Portals to Dark Dimension            | Dr. Doom | HYDRA             | 13-20 | 19 |
    | 1 | Portals to Dark Dimension            | Dr. Doom | Radiation         | 17-18 | 17 |
    | 1 | Unleash the Power of the Cosmic Cube | Loki     | Enemies of Asgard | 20-21 | 19 |
    | 1 | Unleash the Power of the Cosmic Cube | Loki     | Brotherhood       | 20-21 | 19 |
    | 1 | Unleash the Power of the Cosmic Cube | Loki     | HYDRA             | 14-21 | 19 |
    | 1 | Unleash the Power of the Cosmic Cube | Loki     | Radiation         | 18-19 | 17 |
    | 1 | Unleash the Power of the Cosmic Cube | Dr. Doom | Enemies of Asgard | 20-21 | 20 |
    | 1 | Unleash the Power of the Cosmic Cube | Dr. Doom | Brotherhood       | 20-21 | 20 |
    | 1 | Unleash the Power of the Cosmic Cube | Dr. Doom | HYDRA             | 14-21 | 20 |
    | 1 | Unleash the Power of the Cosmic Cube | Dr. Doom | Radiation         | 18-19 | 18 |

    # All "interesting" combos in Dark City; base of Save Humanity, Apocalypse,
    # Four Horsemen
    | 1 | Save Humanity        | Apocalypse   | Four Horsemen      | 20-21 | 21 |
    | 1 | Save Humanity        | Apocalypse   | Emissaries of Evil | 15-21 | 21 |
    | 1 | Save Humanity        | Apocalypse   | Marauders          | 19-21 | 21 |
    | 1 | Save Humanity        | Apocalypse   | MLF                | 18-21 | 21 |
    | 1 | Save Humanity        | Kingpin      | Four Horsemen      | 17-21 | 21 |
    | 1 | Save Humanity        | Kingpin      | Emissaries of Evil | 12-21 | 21 |
    | 1 | Save Humanity        | Kingpin      | Marauders          | 16-21 | 21 |
    | 1 | Save Humanity        | Kingpin      | MLF                | 15-21 | 21 |
    | 1 | Save Humanity        | Mr. Sinister | Four Horsemen      | 19-21 | 21 |
    | 1 | Save Humanity        | Mr. Sinister | Emissaries of Evil | 15-21 | 21 |
    | 1 | Save Humanity        | Mr. Sinister | Marauders          | 19-21 | 21 |
    | 1 | Save Humanity        | Mr. Sinister | MLF                | 17-21 | 21 |
    | 1 | Save Humanity        | Stryfe       | Four Horsemen      | 15-21 | 21 |
    | 1 | Save Humanity        | Stryfe       | Emissaries of Evil | 10-21 | 21 |
    | 1 | Save Humanity        | Stryfe       | Marauders          | 14-21 | 21 |
    | 1 | Save Humanity        | Stryfe       | MLF                | 15-21 | 21 |
    | 1 | Organized Crime Wave | Apocalypse   | Four Horsemen      | 17-18 | 18 |
    | 1 | Organized Crime Wave | Apocalypse   | Emissaries of Evil | 12-18 | 18 |
    | 1 | Organized Crime Wave | Apocalypse   | Marauders          | 16-18 | 18 |
    | 1 | Organized Crime Wave | Apocalypse   | MLF                | 15-18 | 18 |
    | 1 | Organized Crime Wave | Kingpin      | Four Horsemen      | 14-18 | 18 |
    | 1 | Organized Crime Wave | Kingpin      | Emissaries of Evil |  9-18 | 18 |
    | 1 | Organized Crime Wave | Kingpin      | Marauders          | 13-18 | 18 |
    | 1 | Organized Crime Wave | Kingpin      | MLF                | 12-18 | 18 |
    | 1 | Organized Crime Wave | Mr. Sinister | Four Horsemen      | 16-18 | 18 |
    | 1 | Organized Crime Wave | Mr. Sinister | Emissaries of Evil | 12-18 | 18 |
    | 1 | Organized Crime Wave | Mr. Sinister | Marauders          | 16-18 | 18 |
    | 1 | Organized Crime Wave | Mr. Sinister | MLF                | 14-18 | 18 |
    # | 1 | Organized Crime Wave           | Stryfe       | Four Horsemen      | 20-21 | 21 |
    # | 1 | Organized Crime Wave           | Stryfe       | Emissaries of Evil | 20-21 | 21 |
    # | 1 | Organized Crime Wave           | Stryfe       | Marauders          | 20-21 | 21 |
    # | 1 | Organized Crime Wave           | Stryfe       | MLF                | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Apocalypse   | Four Horsemen      | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Apocalypse   | Emissaries of Evil | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Apocalypse   | Marauders          | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Apocalypse   | MLF                | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Kingpin      | Four Horsemen      | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Kingpin      | Emissaries of Evil | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Kingpin      | Marauders          | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Kingpin      | MLF                | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Mr. Sinister | Four Horsemen      | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Mr. Sinister | Emissaries of Evil | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Mr. Sinister | Marauders          | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Mr. Sinister | MLF                | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Stryfe       | Four Horsemen      | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Stryfe       | Emissaries of Evil | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Stryfe       | Marauders          | 20-21 | 21 |
    # | 1 | Steal the Weaponized Plutonium | Stryfe       | MLF                | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Apocalypse   | Four Horsemen      | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Apocalypse   | Emissaries of Evil | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Apocalypse   | Marauders          | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Apocalypse   | MLF                | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Kingpin      | Four Horsemen      | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Kingpin      | Emissaries of Evil | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Kingpin      | Marauders          | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Kingpin      | MLF                | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Mr. Sinister | Four Horsemen      | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Mr. Sinister | Emissaries of Evil | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Mr. Sinister | Marauders          | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Mr. Sinister | MLF                | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Stryfe       | Four Horsemen      | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Stryfe       | Emissaries of Evil | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Stryfe       | Marauders          | 20-21 | 21 |
    # | 1 | Transform Citizens Into Demons | Stryfe       | MLF                | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Apocalypse   | Four Horsemen      | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Apocalypse   | Emissaries of Evil | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Apocalypse   | Marauders          | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Apocalypse   | MLF                | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Kingpin      | Four Horsemen      | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Kingpin      | Emissaries of Evil | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Kingpin      | Marauders          | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Kingpin      | MLF                | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Mr. Sinister | Four Horsemen      | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Mr. Sinister | Emissaries of Evil | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Mr. Sinister | Marauders          | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Mr. Sinister | MLF                | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Stryfe       | Four Horsemen      | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Stryfe       | Emissaries of Evil | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Stryfe       | Marauders          | 20-21 | 21 |
    # | 1 | X-Cutioner's Song              | Stryfe       | MLF                | 20-21 | 21 |
