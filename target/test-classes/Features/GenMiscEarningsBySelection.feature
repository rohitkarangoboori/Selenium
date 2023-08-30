#Author :Abhinandan Mannurkar

Feature: Generate Misc Earnings
  @GenMiscEarnings
    @PATC60
  Scenario Outline: Automate Generate Misc Earnings Form
    Given User opens Generate Misc Earnings Form
    Then user sends Payroll Type "<PayrollType>"
    Then user sends Payroll Cycle "<PayrollCycle>"
    Then user to send Pay Period "<PayPeriod>"
    Then user to click on Generate Misc Earnings

    Examples:
      |PayrollType|PayrollCycle|PayPeriod|
      |R          |B          |4                    |

  @GenMiscEarnings
    @PATC61
  Scenario Outline: Automate Generate Misc Earnings Form By Selection
    Given User navigates Generate Misc Earnings Form
    Then user should enter Payroll Type "<PayrollType>"
    Then user should enter Payroll Cycle "<PayrollCycle>"
    Then user enter Pay Period "<PayPeriod>"
    Then user to click on Select Earnings and choose other earnings
    Then user clicks to accept
    Then user clicks on Generate Sel Earnings

    Examples:
      |PayrollType|PayrollCycle|PayPeriod|
      |R          |B          |4                    |

