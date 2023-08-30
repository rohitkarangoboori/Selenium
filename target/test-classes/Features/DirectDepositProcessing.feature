#Author :Abhinandan Mannurkar

Feature: Direct Deposit Processing
  @DirectDeposit
    @PATC49
  Scenario Outline: Automate Direct Deposit Form to create file report
    Given User opens Direct Deposit Form
    Then user enters DDFrom "<DDFrom>"
    Then user enters DDTo "<DDTo>"
    Then enters the CheckReconciliation Date "<CheckReconciliationDate>"
    Then user enters GL Posting Date "<GLDate>"
    Then user to select Print DD Report
    Then user to select Create Direct Deposit File from dropdown
    Then user to enter Bank Posting Date "<BankPD>"
    Then user to enter DD File ID Modifier
    Then user clicks on CreateFilereport

    Examples:
      |DDFrom|DDTo|CheckReconciliationDate|GLDate|BankPD|
      |01-01-2020          |12-31-2020          |12-31-2020    |12-31-2020    |12-31-2020 |

  @DirectDeposit
    @PATC50
  Scenario Outline: Automate Direct Deposit Form to Unreconcile Check
    Given user should navigate to Direct Deposit Form
    Then user should enter DDFrom "<DDFrom>"
    Then user should enter DDTo "<DDTo>"
    Then user should enter the CheckReconciliation Date "<CheckReconciliationDate>"
    Then user should enter GL Posting Date "<GLDate>"
    Then user should select blank sequence
    Then user should enter Bank Posting Date "<BankPD>"
    Then user should enter DD File ID Modifier
    Then user clicks on Unreconcile Check

    Examples:
      |DDFrom|DDTo|CheckReconciliationDate|GLDate|BankPD|
      |01-01-2020          |12-31-2020          |12-31-2020    |12-31-2020    |12-31-2020 |


  @PATC51
  Scenario Outline: Automate Direct Deposit Form to Prenotification file report
    Given User navigates to Direct Deposit Form
    Then user goes to DDFrom "<DDFrom>"
    Then user goes to DDTo "<DDTo>"
    Then user enters the CheckReconciliation Date "<CheckReconciliationDate>"
    Then user sends GL Posting Date "<GLDate>"
    Then user selects Print DD Report
    Then user has to select Create Direct Deposit File from dropdown
    Then user has to enter Bank Posting Date "<BankPD>"
    Then user has to enter DD File ID Modifier
    Then user clicks on Prenotification file

    Examples:
      |DDFrom|DDTo|CheckReconciliationDate|GLDate|BankPD|
      |01-01-2020          |12-31-2020          |12-31-2020    |12-31-2020    |12-31-2020 |

# Require to configure test data.
  @PATC52
  Scenario Outline: Automate Direct Deposit Form to check deposit deductions
    Given user navigated to Direct Deposit Form
    Then user enters DDFrom date "<DDFrom>"
    Then user enters DDTo date "<DDTo>"
    Then sends the CheckReconciliation Date "<CheckReconciliationDate>"
    Then user sends the GL Posting Date "<GLDate>"
    Then user to select deposit checks or deductions
    Then user clicks Print DD Report
    Then user selects Create Direct Deposit File from dropdown
    Then user sends Bank Posting Date "<BankPD>"
    Then user sends DD File ID Modifier
    Then user clicked on Prenotification file

    Examples:
      |DDFrom|DDTo|CheckReconciliationDate|GLDate|BankPD|
      |01-01-2020          |12-31-2020          |12-31-2020    |12-31-2020    |12-31-2020 |
