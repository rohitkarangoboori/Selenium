#Author :Abhinandan Mannurkar

Feature: Direct Debit Processing
  @DirectDebit

  Scenario Outline: Automate Direct Debit Form to create file report
    Given User opens Direct Debit Form
    Then User enter Direct Debit Record Identifier "<DDIdentifier>"
    Then user has to enter DDFrom "<DDFrom>"
    Then user has to enter DDTo "<DDTo>"
    Then user has to select Print DD Report
    Then user has to click on CreateFilereport

    Examples:
      |DDIdentifier|DDFrom|DDTo|
      |0100012175|01-01-2020          |12-31-2020          |

#Note To execute below scenario successfully the environment should not have PA135T file in location \\ENV\devel\fms\700\u90dev\fms\data\PA
    @DirectDebit

    Scenario Outline: Automate Direct Debit Form to create direct debit disk file report
      Given User navigates to Direct Debit Form
      Then User enters Direct Debit Record Identifier "<DDIdentifier>"
      Then user has to select date DDFrom "<DDFrom>"
      Then user has to select date DDTo "<DDTo>"
      Then user has to check Print DD Report
      Then user has to select direct debit report file from disk
      Then user has to enter direct debit file modifier "<DDModifier>"
      Then user selects to click on CreateFilereport

      Examples:
        |DDIdentifier|DDFrom|DDTo|DDModifier|
        |0100012175|01-01-2020          |12-31-2020          |1|

  @DirectDebit
  Scenario Outline: Automate Direct Debit Form to Restore Direct Debit
    Given User goes to Direct Debit Form
    Then user entered Direct Debit Record Identifier "<DDIdentifier>"
    Then user shall enter DDFrom "<DDFrom>"
    Then user shall enter DDTo "<DDTo>"
    Then user shall select Print DD Report
    Then user shall click on Restore Direct Debit

    Examples:
      |DDIdentifier|DDFrom|DDTo|
      |0100012175|01-01-2020          |12-31-2020          |

  @DirectDebit

  Scenario Outline: Automate Direct Debit Form to create prenotification file report
    Given user opens Direct Debit Form
    Then user enter Direct Debit Record Identifier "<DDIdentifier>"
    Then user have to select date DDFrom "<DDFrom>"
    Then user have to select date DDTo "<DDTo>"
    Then user has to check on Print DD Report
    Then user has to click on CreatePrenotificationFile

    Examples:
      |DDIdentifier|DDFrom|DDTo|
      |0100012175|01-01-2021          |12-31-2021          |
