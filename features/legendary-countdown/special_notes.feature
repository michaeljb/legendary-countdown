Feature: Special Notes from setup

  Scenario Outline: Villain Deck timer and Maximum Winning Turn
    Given I am on the page
    And the number of players is <players>
    And the Scheme is <scheme>
    And the Mastermind is <mastermind>
    And the Villain Group(s) is/are <villains>
    When I press submit
    Then there should be a note saying: "<note>"

    Examples:
    | players | scheme | mastermind | villains | note |

    # it's much easier to just say you get an extra turn for each time Wolverine
    # Overruns than figuring out exactly how many times he can Overrun
    | 1 | Graduation at Xavier's X-Academy | Professor X | Uncanny Avengers | Maximum Winning Turn and highest turn for the Adversary/Villain Deck to empty increases by 1 for each time Wolverine Overruns. |
