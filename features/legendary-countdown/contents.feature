Feature: Display Contents of Villain Deck
  As a Legendary Online League organizer
  In order to help players have the correct setup
  I want to see the required contents of the Villain Deck

  Scenario Outline:
    Given I am on the page
    And the number of players is <players>
    And the Scheme is <scheme>
    When I press submit
    Then the Villain Deck should contain 5 Master Strikes
    And the Villain Deck should contain <twist_count> Scheme Twists
    And the Villain Deck should contain <villain_count> Villains
    And the Villain Deck should contain <henchmen_count> Henchmen
    And the Villain Deck should contain <bystander_count> Bystanders
    And the Villain Deck should contain <hero_count> Heroes

    Examples:
    | players | scheme                                      | twist_count | villain_count | henchmen_count | bystander_count | hero_count |
    |       1 | The Legacy Virus                            |           8 |             8 |              3 |               1 |          0 |
    |       2 | The Legacy Virus                            |           8 |            16 |             10 |               2 |          0 |
    |       3 | The Legacy Virus                            |           8 |            24 |             10 |               8 |          0 |
    |       4 | The Legacy Virus                            |           8 |            24 |             20 |               8 |          0 |
    |       5 | The Legacy Virus                            |           8 |            32 |             20 |              12 |          0 |
    |       1 | Midtown Bank Robbery                        |           8 |             8 |              3 |              12 |          0 |
    |       2 | Midtown Bank Robbery                        |           8 |            16 |             10 |              12 |          0 |
    |       3 | Midtown Bank Robbery                        |           8 |            24 |             10 |              12 |          0 |
    |       4 | Midtown Bank Robbery                        |           8 |            24 |             20 |              12 |          0 |
    |       5 | Midtown Bank Robbery                        |           8 |            32 |             20 |              12 |          0 |
    |       2 | Negative Zone Prison Breakout               |           8 |            16 |             20 |               2 |          0 |
    |       3 | Negative Zone Prison Breakout               |           8 |            24 |             20 |               8 |          0 |
    |       4 | Negative Zone Prison Breakout               |           8 |            24 |             30 |               8 |          0 |
    |       5 | Negative Zone Prison Breakout               |           8 |            32 |             30 |              12 |          0 |
    |       1 | Portals to Dark Dimension                   |           7 |             8 |              3 |               1 |          0 |
    |       2 | Portals to Dark Dimension                   |           7 |            16 |             10 |               2 |          0 |
    |       3 | Portals to Dark Dimension                   |           7 |            24 |             10 |               8 |          0 |
    |       4 | Portals to Dark Dimension                   |           7 |            24 |             20 |               8 |          0 |
    |       5 | Portals to Dark Dimension                   |           7 |            32 |             20 |              12 |          0 |
    |       1 | Replace Earth's Leaders with Killbots       |           5 |             8 |              3 |              18 |          0 |
    |       2 | Replace Earth's Leaders with Killbots       |           5 |            16 |             10 |              18 |          0 |
    |       3 | Replace Earth's Leaders with Killbots       |           5 |            24 |             10 |              18 |          0 |
    |       4 | Replace Earth's Leaders with Killbots       |           5 |            24 |             20 |              18 |          0 |
    |       5 | Replace Earth's Leaders with Killbots       |           5 |            32 |             20 |              18 |          0 |
    |       1 | Secret Invasion of the Skrull Shapeshifters |           8 |             8 |              3 |               1 |         12 |
    |       2 | Secret Invasion of the Skrull Shapeshifters |           8 |            16 |             10 |               2 |         12 |
    |       3 | Secret Invasion of the Skrull Shapeshifters |           8 |            24 |             10 |               8 |         12 |
    |       4 | Secret Invasion of the Skrull Shapeshifters |           8 |            24 |             20 |               8 |         12 |
    |       5 | Secret Invasion of the Skrull Shapeshifters |           8 |            32 |             20 |              12 |         12 |
    |       2 | Super Hero Civil War                        |           8 |            16 |             10 |               2 |          0 |
    |       3 | Super Hero Civil War                        |           8 |            24 |             10 |               8 |          0 |
    |       4 | Super Hero Civil War                        |           8 |            24 |             20 |               8 |          0 |
    |       5 | Super Hero Civil War                        |           8 |            32 |             20 |              12 |          0 |
    |       1 | Unleash the Power of the Cosmic Cube        |           8 |             8 |              3 |               1 |          0 |
    |       2 | Unleash the Power of the Cosmic Cube        |           8 |            16 |             10 |               2 |          0 |
    |       3 | Unleash the Power of the Cosmic Cube        |           8 |            24 |             10 |               8 |          0 |
    |       4 | Unleash the Power of the Cosmic Cube        |           8 |            24 |             20 |               8 |          0 |
    |       5 | Unleash the Power of the Cosmic Cube        |           8 |            32 |             20 |              12 |          0 |
