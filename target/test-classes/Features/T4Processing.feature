#Author :Abhinandan Mannurkar

Feature: T4 Processing Form

  @T4Processing
  @PATC104
  Scenario: Automate T4 Processing Form
    Given user opens CDN Tax Processing Form
    Then user selects the year in report name and clicks accept
    Then user checks the Checklist only option
    Then user has to click on Create New option and click enter


  @T4Processing
  @PATC99
  Scenario Outline: Automate T4 Processing Form for Summary Report
    Given user navigated to CDN Tax Processing Form
    Then user selected the year in report name and clicks accept
    Then user has to enter MaxEIEarnings "<MaxEIEarnings>"
    Then user clicks on Summary Report

    Examples:
    |MaxEIEarnings|
    |54000        |

  @T4Processing
    @PATC100
  Scenario Outline: Automate T4 Processing Form for Amendment CDN Report
    Given user has to navigate to CDN Tax Processing Form
    Then user has to select the year in report name and clicks accept
    Then user has to change to amendments tab
    Then user has to enter EmpNumber "<EmpNumber>" and replacement no
    Then user clicks on Amendement CDN

    Examples:
      |EmpNumber|
      |10244        |


  @T4Processing
    @PATC101
  Scenario Outline: Automate T4 Processing Form for Amendment Modified Report
    Given user should open CDN Tax Processing Form
    Then user should select the year in report name and clicks accept
    Then user should change to amendments tab
    Then user should enter EmpNumber "<EmpNumber>" and replacement no
    Then user clicks on Amendement Modified

    Examples:
      |EmpNumber|
      |10244        |

  @T4Processing
  @PATC102
  Scenario: Automate T4 Processing Form for Print Parameter
    Given user should navigate to CDN Tax Processing Form
    Then user should choose the year in report name and clicks accept
    Then click on Checklist only
    Then user has to click on Print Parameter

  @T4Processing
    @PATC103
  Scenario Outline: Automate T4 Processing Form for Duplicate Tax Report
    Given user shall open CDN Tax Processing Form
    Then user shall select the year in report name and clicks accept
    Then user shall change to duplicate tab
    Then user shall enter EmpNumber "<EmpNumber>" and replacement no
    Then user clicks on Duplicate CDN Tax

    Examples:
      |EmpNumber|
      |10244        |

  @T4Processing
    @PATC97
  Scenario Outline: Automate T4 Processing Form for Duplicate Modified Records
    Given user shall navigate to CDN Tax Processing Form
    Then user shall choose the year in report name and clicks accept
    Then user should change to duplicate tab
    Then user selects enter EmpNumber "<EmpNumber>" and replacement no
    Then user clicks on Duplicate Modified Records

    Examples:
      |EmpNumber|
      |10244        |

  @T4Processing
  @PATC98
  Scenario: Automate T4 Processing Form for Modified T4's
    Given user navigates to CDN Tax Processing Form
    Then user chooses the year in report name and clicks accept
    Then user has to click on AllModifiedRecords
