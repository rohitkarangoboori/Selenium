#Author :Abhinandan Mannurkar

Feature: W2 Work File Maintenance Form

  @W2WorkFile @basic
  @PATC75
  Scenario Outline: Automate W2 Work File Maintenance Form to generate a file
    Given User opens Work File Maintenance Form
    Then user has to click next
    Then user has to edit the file
    Then user has to switch tab to another box
    Then user changes the Medicare Tax value "<MedicareTax>"
    Then user clicks on Save

    Examples:
    |MedicareTax|
    |400        |


  @W2WorkFile @basic
  @PATC76
  Scenario: Automate W2 Processing Form to generate a work file maintenance file change
    Given User navigated to US Tax Processing Form
    Then user clicks to accept for the year
    Then user deselects the file creation form and Prints Form
    Then user has to click accept to generate file
