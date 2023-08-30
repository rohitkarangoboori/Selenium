#Author :Abhinandan Mannurkar

Feature: Combined Earnings and Deductions Form

  @CombEarnDed @basic
    @PATC77
  Scenario Outline: Automate Combined Earnings and Deductions Form to generate Cancellation Report
    Given User opens Combined Earnings and Deductions Form
    Then user has to enter Payroll Type "<PayrollType>"
    Then user has to enter Payroll Cycle "<PayrollCycle>"
    Then user has to enter Payroll Period "<PayPeriod>"
    Then user clicks on Cancellations

    Examples:
      |PayrollType|PayrollCycle|PayPeriod|
      |R        |B             |24       |


  @CombEarnDed @basic
    @PATC78
  Scenario Outline: Automate Combined Earnings and Deductions Form to generate Duplications Report
    Given User navigates to Combined Earnings and Deductions Form
    Then user entered Payroll Type "<PayrollType>"
    Then user entered Payroll Cycle "<PayrollCycle>"
    Then user entered Payroll Period "<PayPeriod>"
    Then user to click on Duplications

    Examples:
      |PayrollType|PayrollCycle|PayPeriod|
      |R        |B             |24       |

  @CombEarnDed @basic
    @PATC79
  Scenario Outline: Automate Combined Earnings and Deductions Form to generate Issued Report
    Given User should navigate to Combined Earnings and Deductions Form
    Then user should enter Pay Type "<PayrollType>"
    Then user should enter Pay Cycle "<PayrollCycle>"
    Then user should enter Payroll Period "<PayPeriod>"
    Then user checks on Name Sequence
    Then user to enter Average number of Earnings "<AvgEarn>"
    Then user to click on Issued to generate report

    Examples:
      |PayrollType|PayrollCycle|PayPeriod|AvgEarn|
      |R        |B             |24       |1      |

  @CombEarnDed @basic
    @PATC80
  Scenario Outline: Automate Combined Earnings and Deductions Form to generate Manual Report
    Given User shall navigate to Combined Earnings and Deductions Form
    Then user shall enter Pay Type "<PayrollType>"
    Then user shall enter Pay Cycle "<PayrollCycle>"
    Then user shall enter Payroll Period "<PayPeriod>"
    Then user to enter Average number of Deductions "<AvgDed>"
    Then user checks on Read from Audit Tables
    Then user to click on Manual to generate report

    Examples:
      |PayrollType|PayrollCycle|PayPeriod|AvgDed|
      |R        |B             |24       |5      |


  @CombEarnDed @basic
    @PATC81
  Scenario Outline: Automate Combined Earnings and Deductions Form to generate Regular Report
    Given User to open Combined Earnings and Deductions Form
    Then user choose to enter Payroll Type "<PayrollType>"
    Then user choose to enter Payroll Cycle "<PayrollCycle>"
    Then user choose to enter Payroll Period "<PayPeriod>"
    Then user clicks on Regular to generate report

    Examples:
      |PayrollType|PayrollCycle|PayPeriod|
      |R        |B             |24       |
