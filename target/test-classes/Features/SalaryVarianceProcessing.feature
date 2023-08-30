#Author :Abhinandan Mannurkar

Feature: Salary Variance Processing
  @SalaryVariance
    @PATC54
  Scenario Outline: Automate Salary Variance Processing Form
    Given User opens Salary Variance Processing Form
    Then user enters Payroll Type "<PayrollType>"
    Then user enters Payroll Cycle "<PayrollCycle>"
    Then enters the Earnings Code "<EarningsCode>"
    Then user selects Department and Sub Dept "<Department>" & "<SubDept>"
    Then user to enter Pay Period "<PayPeriod>"
    Then user to enter Entry Date "<EntryDate>"
    Then user to click on accept

    Examples:
      |PayrollType|PayrollCycle|EarningsCode|Department|SubDept|PayPeriod|EntryDate|
      |R          |B          |090    |001    |061 |4                    |02-14-2020|

  @SalaryVariance
    @PATC55
  Scenario Outline: Automate Salary Variance Processing Form by Department
    Given User navigates to Salary Variance Processing Form
    Then user selects Payroll Type "<PayrollType>"
    Then user selects Payroll Cycle "<PayrollCycle>"
    Then selects the Earnings Code "<EarningsCode>"
    Then user clicks on Select Department and chooses multiple departments
    Then user selects to enter Pay Period "<PayPeriod>"
    Then user selects to enter Entry Date "<EntryDate>"
    Then user clicks on accept

    Examples:
      |PayrollType|PayrollCycle|EarningsCode|PayPeriod|EntryDate|
      |R          |B          |090    |4                    |02-14-2020|
