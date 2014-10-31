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
    And the Villain Deck should contain <other_count> <other_type>

    Examples:
    | players | scheme                                      | twist_count | villain_count | henchmen_count | bystander_count | other_count | other_type |
    |       1 | The Legacy Virus                            |           8 |             8 |              3 |               1 |             |            |
    |       2 | The Legacy Virus                            |           8 |            16 |             10 |               2 |             |            |
    |       3 | The Legacy Virus                            |           8 |            24 |             10 |               8 |             |            |
    |       4 | The Legacy Virus                            |           8 |            24 |             20 |               8 |             |            |
    |       5 | The Legacy Virus                            |           8 |            32 |             20 |              12 |             |            |
    |       1 | Midtown Bank Robbery                        |           8 |             8 |              3 |              12 |             |            |
    |       2 | Midtown Bank Robbery                        |           8 |            16 |             10 |              12 |             |            |
    |       3 | Midtown Bank Robbery                        |           8 |            24 |             10 |              12 |             |            |
    |       4 | Midtown Bank Robbery                        |           8 |            24 |             20 |              12 |             |            |
    |       5 | Midtown Bank Robbery                        |           8 |            32 |             20 |              12 |             |            |
    |       2 | Negative Zone Prison Breakout               |           8 |            16 |             20 |               2 |             |            |
    |       3 | Negative Zone Prison Breakout               |           8 |            24 |             20 |               8 |             |            |
    |       4 | Negative Zone Prison Breakout               |           8 |            24 |             30 |               8 |             |            |
    |       5 | Negative Zone Prison Breakout               |           8 |            32 |             30 |              12 |             |            |
    |       1 | Portals to Dark Dimension                   |           7 |             8 |              3 |               1 |             |            |
    |       2 | Portals to Dark Dimension                   |           7 |            16 |             10 |               2 |             |            |
    |       3 | Portals to Dark Dimension                   |           7 |            24 |             10 |               8 |             |            |
    |       4 | Portals to Dark Dimension                   |           7 |            24 |             20 |               8 |             |            |
    |       5 | Portals to Dark Dimension                   |           7 |            32 |             20 |              12 |             |            |
    |       1 | Replace Earth's Leaders with Killbots       |           5 |             8 |              3 |              18 |             |            |
    |       2 | Replace Earth's Leaders with Killbots       |           5 |            16 |             10 |              18 |             |            |
    |       3 | Replace Earth's Leaders with Killbots       |           5 |            24 |             10 |              18 |             |            |
    |       4 | Replace Earth's Leaders with Killbots       |           5 |            24 |             20 |              18 |             |            |
    |       5 | Replace Earth's Leaders with Killbots       |           5 |            32 |             20 |              18 |             |            |
    |       1 | Secret Invasion of the Skrull Shapeshifters |           8 |             8 |              3 |               1 |          12 | Heroes     |
    |       2 | Secret Invasion of the Skrull Shapeshifters |           8 |            16 |             10 |               2 |          12 | Heroes     |
    |       3 | Secret Invasion of the Skrull Shapeshifters |           8 |            24 |             10 |               8 |          12 | Heroes     |
    |       4 | Secret Invasion of the Skrull Shapeshifters |           8 |            24 |             20 |               8 |          12 | Heroes     |
    |       5 | Secret Invasion of the Skrull Shapeshifters |           8 |            32 |             20 |              12 |          12 | Heroes     |
    |       2 | Super Hero Civil War                        |           8 |            16 |             10 |               2 |             |            |
    |       3 | Super Hero Civil War                        |           8 |            24 |             10 |               8 |             |            |
    |       4 | Super Hero Civil War                        |           5 |            24 |             20 |               8 |             |            |
    |       5 | Super Hero Civil War                        |           5 |            32 |             20 |              12 |             |            |
    |       1 | Unleash the Power of the Cosmic Cube        |           8 |             8 |              3 |               1 |             |            |
    |       2 | Unleash the Power of the Cosmic Cube        |           8 |            16 |             10 |               2 |             |            |
    |       3 | Unleash the Power of the Cosmic Cube        |           8 |            24 |             10 |               8 |             |            |
    |       4 | Unleash the Power of the Cosmic Cube        |           8 |            24 |             20 |               8 |             |            |
    |       5 | Unleash the Power of the Cosmic Cube        |           8 |            32 |             20 |              12 |             |            |
    |       1 | Capture Baby Hope                           |           8 |             8 |              3 |               1 |             |            |
    |       2 | Capture Baby Hope                           |           8 |            16 |             10 |               2 |             |            |
    |       3 | Capture Baby Hope                           |           8 |            24 |             10 |               8 |             |            |
    |       4 | Capture Baby Hope                           |           8 |            24 |             20 |               8 |             |            |
    |       5 | Capture Baby Hope                           |           8 |            32 |             20 |              12 |             |            |
    |       1 | Detonate the Helicarrier                    |           8 |             8 |              3 |               1 |             |            |
    |       2 | Detonate the Helicarrier                    |           8 |            16 |             10 |               2 |             |            |
    |       3 | Detonate the Helicarrier                    |           8 |            24 |             10 |               8 |             |            |
    |       4 | Detonate the Helicarrier                    |           8 |            24 |             20 |               8 |             |            |
    |       5 | Detonate the Helicarrier                    |           8 |            32 |             20 |              12 |             |            |
    |       1 | Massive Earthquake Generator                |           8 |             8 |              3 |               1 |             |            |
    |       2 | Massive Earthquake Generator                |           8 |            16 |             10 |               2 |             |            |
    |       3 | Massive Earthquake Generator                |           8 |            24 |             10 |               8 |             |            |
    |       4 | Massive Earthquake Generator                |           8 |            24 |             20 |               8 |             |            |
    |       5 | Massive Earthquake Generator                |           8 |            32 |             20 |              12 |             |            |
    |       1 | Organized Crime Wave                        |           8 |             8 |             10 |               1 |             |            |
    |       2 | Organized Crime Wave                        |           8 |            16 |             10 |               2 |             |            |
    |       3 | Organized Crime Wave                        |           8 |            24 |             10 |               8 |             |            |
    |       4 | Organized Crime Wave                        |           8 |            24 |             20 |               8 |             |            |
    |       5 | Organized Crime Wave                        |           8 |            32 |             20 |              12 |             |            |
    |       1 | Save Humanity                               |           8 |             8 |              3 |               1 |             |            |
    |       2 | Save Humanity                               |           8 |            16 |             10 |               2 |             |            |
    |       3 | Save Humanity                               |           8 |            24 |             10 |               8 |             |            |
    |       4 | Save Humanity                               |           8 |            24 |             20 |               8 |             |            |
    |       5 | Save Humanity                               |           8 |            32 |             20 |              12 |             |            |
    |       1 | Steal the Weaponized Plutonium              |           8 |            16 |              3 |               1 |             |            |
    |       2 | Steal the Weaponized Plutonium              |           8 |            24 |             10 |               2 |             |            |
    |       3 | Steal the Weaponized Plutonium              |           8 |            32 |             10 |               8 |             |            |
    |       4 | Steal the Weaponized Plutonium              |           8 |            32 |             20 |               8 |             |            |
    |       5 | Steal the Weaponized Plutonium              |           8 |            40 |             20 |              12 |             |            |
    |       1 | Transform Citizens Into Demons              |           8 |             8 |              3 |               0 |          14 | Jean Greys |
    |       2 | Transform Citizens Into Demons              |           8 |            16 |             10 |               0 |          14 | Jean Greys |
    |       3 | Transform Citizens Into Demons              |           8 |            24 |             10 |               0 |          14 | Jean Greys |
    |       4 | Transform Citizens Into Demons              |           8 |            24 |             20 |               0 |          14 | Jean Greys |
    |       5 | Transform Citizens Into Demons              |           8 |            32 |             20 |               0 |          14 | Jean Greys |
    |       1 | X-Cutioner's Song                           |           8 |             8 |              3 |               0 |          14 | Heroes     |
    |       2 | X-Cutioner's Song                           |           8 |            16 |             10 |               0 |          14 | Heroes     |
    |       3 | X-Cutioner's Song                           |           8 |            24 |             10 |               0 |          14 | Heroes     |
    |       4 | X-Cutioner's Song                           |           8 |            24 |             20 |               0 |          14 | Heroes     |
    |       5 | X-Cutioner's Song                           |           8 |            32 |             20 |               0 |          14 | Heroes     |
    |       1 | Bathe the Earth in Cosmic Rays              |           6 |             8 |              3 |               1 |             |            |
    |       2 | Bathe the Earth in Cosmic Rays              |           6 |            16 |             10 |               2 |             |            |
    |       3 | Bathe the Earth in Cosmic Rays              |           6 |            24 |             10 |               8 |             |            |
    |       4 | Bathe the Earth in Cosmic Rays              |           6 |            24 |             20 |               8 |             |            |
    |       5 | Bathe the Earth in Cosmic Rays              |           6 |            32 |             20 |              12 |             |            |
    |       1 | Flood the Planet with Melted Glaciers       |           8 |             8 |              3 |               1 |             |            |
    |       2 | Flood the Planet with Melted Glaciers       |           8 |            16 |             10 |               2 |             |            |
    |       3 | Flood the Planet with Melted Glaciers       |           8 |            24 |             10 |               8 |             |            |
    |       4 | Flood the Planet with Melted Glaciers       |           8 |            24 |             20 |               8 |             |            |
    |       5 | Flood the Planet with Melted Glaciers       |           8 |            32 |             20 |              12 |             |            |
    |       1 | Invincible Force Field                      |           7 |             8 |              3 |               1 |             |            |
    |       2 | Invincible Force Field                      |           7 |            16 |             10 |               2 |             |            |
    |       3 | Invincible Force Field                      |           7 |            24 |             10 |               8 |             |            |
    |       4 | Invincible Force Field                      |           7 |            24 |             20 |               8 |             |            |
    |       5 | Invincible Force Field                      |           7 |            32 |             20 |              12 |             |            |
    |       1 | Pull Reality Into the Negative Zone         |           8 |             8 |              3 |               1 |             |            |
    |       2 | Pull Reality Into the Negative Zone         |           8 |            16 |             10 |               2 |             |            |
    |       3 | Pull Reality Into the Negative Zone         |           8 |            24 |             10 |               8 |             |            |
    |       4 | Pull Reality Into the Negative Zone         |           8 |            24 |             20 |               8 |             |            |
    |       5 | Pull Reality Into the Negative Zone         |           8 |            32 |             20 |              12 |             |            |
