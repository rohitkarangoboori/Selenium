#Author :Abhinandan Mannurkar
Feature: 941 Quarterly Report Form

  @QuarterlyReport @basic @PATC82
  Scenario Outline: Automate Quarterly Report Tax Form to generate Federal Report
    Given User opens Quarterly Report Tax Form
    Then user has to select Generation Type
    Then user has to configure Exclude and Include Earnings "<Regular>" "<Overtime>" "<Vacation>" "<FMLA>" "<Sick>"
    Then user has to click accept
    Then user enters Report Period "<Period>"
    Then user enters FICA Max Wages "<FICAWages>"
    Then user enters Medicare Wages "<MedicareWages>"
    Then user enters factors for deduction "<F>" "<P>" "<Q>" "<T>" "<M>" "<N>"
    Then user clicks Generate Report

    Examples: 
      | Regular | Overtime | Vacation | FMLA | Sick | FICAWages | MedicareWages | F    | P    | Q    | T    | M    | N    | Period |
      | P       | P        | P        | P    | P    |  99999.00 |      99999.00 | .150 | .200 | .200 | .250 | .110 | .200 |   2020 |

  @QuarterlyReport @basic @PATC83
  Scenario Outline: Automate Quarterly Report Tax Form to generate State Report
    Given User opens Quarterly Report State Tax Form
    Then user has selects Generation Type
    Then user selects the State to process "<State>"
    Then user has to click Generate Report

    Examples: 
      | State |
      | AL    |
