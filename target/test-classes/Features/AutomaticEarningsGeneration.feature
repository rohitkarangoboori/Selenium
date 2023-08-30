#Author :Abhinandan Mannurkar

Feature: Automatic Earnings Generation
  @EarningsGeneration
    @PATC53
  Scenario Outline: Automate Automatic Earnings Generation Form by Department
    Given user navigates to Automatic Earnings Generation Form
    Then user enters Pay Period "<PayPeriod>"
    Then user enters Batch Date "<BatchDate>"
    Then user clicks Continue
    Then user enters PayrollType "<PayrollType>"
    Then user enters PayrollCycle "<PayrollCycle>"
    Then user enters Earnings "<EarningsCode>"
    Then user clicks Selects Department
    Then user chooses one department
    Then user accepts to generate earnings

    Examples:
    |PayPeriod|BatchDate|PayrollType|PayrollCycle|EarningsCode|
    |10       |04-16-2020|R         |B           |0           |


  @EarningsGeneration
    @PATC54
  Scenario Outline: Automate Automatic Earnings Generation Form by Group
    Given user navigated to Automatic Earnings Generation Form
    Then user should enter Pay Period "<PayPeriod>"
    Then user should enter Batch Date "<BatchDate>"
    Then user clicked Continue
    Then user should enter PayrollType "<PayrollType>"
    Then user should enter PayrollCycle "<PayrollCycle>"
    Then user should enter Earnings "<EarningsCode>"
    Then user should select Selection Type by Group
    Then user clicks Selects Group
    Then user chooses one Group
    Then user clicks accept to generate earnings

    Examples:
      |PayPeriod|BatchDate|PayrollType|PayrollCycle|EarningsCode|
      |10       |04-16-2020|R         |B           |0           |

  @EarningsGeneration
    @PATC55
  Scenario Outline: Automate Automatic Earnings Generation Form by Number of Hours
    Given user goes to Automatic Earnings Generation Form
    Then user entered Pay Period "<PayPeriod>"
    Then user entered Batch Date "<BatchDate>"
    Then user has clicked Continue
    Then user entered PayrollType "<PayrollType>"
    Then user entered PayrollCycle "<PayrollCycle>"
    Then user entered Earnings "<EarningsCode>"
    Then user sends number of hours "<Hours>"
    Then user clicked Selects Department
    Then user choose one department
    Then user accept to generate earnings

    Examples:
      |PayPeriod|BatchDate|PayrollType|PayrollCycle|EarningsCode|Hours|
      |10       |04-16-2020|R         |B           |0           |35   |

  @EarningsGeneration
    @PATC56
  Scenario Outline: Automate Automatic Earnings Generation Form by selecting Daily Frequency
    Given user opens Automatic Earnings Generation Form
    Then user shall enter Pay Period "<PayPeriod>"
    Then user shall enter Batch Date "<BatchDate>"
    Then user clicked on Continue
    Then user shall enter PayrollType "<PayrollType>"
    Then user shall enter PayrollCycle "<PayrollCycle>"
    Then user shall enter Earnings "<EarningsCode>"
    Then user changes Frequency to Daily
    Then user selects DateRange "<DateFrom>" & "<DateTo>"
    Then user clicked on Selects Department
    Then user selects one department
    Then user accepted to generate earnings

    Examples:
      |PayPeriod|BatchDate|PayrollType|PayrollCycle|EarningsCode|DateFrom|DateTo|
      |10       |04-16-2020|R         |B           |0           |04-25-2020|04-25-2020|

  @EarningsGeneration
    @PATC57
  Scenario Outline: Automate Automatic Earnings Generation Form by selecting Range Frequency
    Given user has to open Automatic Earnings Generation Form
    Then user has to enter Pay Period "<PayPeriod>"
    Then user has to enter Batch Date "<BatchDate>"
    Then user has to on Continue
    Then user has to enter PayrollType "<PayrollType>"
    Then user has to enter PayrollCycle "<PayrollCycle>"
    Then user has to enter Earnings "<EarningsCode>"
    Then user changes Frequency to Range
    Then user has to select DateRange "<DateFrom>" & "<DateTo>"
    Then user has to click on Selects Department
    Then user has to select one department
    Then user has to accept to generate earnings

    Examples:
      |PayPeriod|BatchDate|PayrollType|PayrollCycle|EarningsCode|DateFrom|DateTo|
      |10       |04-16-2020|R         |B           |0           |04-25-2020|04-30-2020|
