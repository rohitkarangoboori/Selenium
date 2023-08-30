#Author :Abhinandan Mannurkar

Feature: W2 Processing Form

  @W2Processing @basic
    @PATC73
  Scenario: Automate W2 Processing Form to generate a file
    Given User opens US Tax Processing Form
    Then user has to click accept for the year
    Then user has to click submit to generate file


  @W2Processing @basic
  @PATC74
  Scenario: Automate W2 Processing Form to generate Print Parameter Report
    Given User navigates to US Tax Processing Form
    Then user has to accept for the year
    Then user has to click Print Parameter
