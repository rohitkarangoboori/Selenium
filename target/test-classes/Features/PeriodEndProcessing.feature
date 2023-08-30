#Author :Abhinandan Mannurkar

Feature: Period End Processing Flow

  @PeriodEnd @basic @all
  @PATC70
  Scenario Outline: Automate Period End Processing Flow for Regular period
    Given User opens Period End Processing Form
    Then user has to enter the Paytype "<Payrolltype>"
    Then user has to enter PayCycle "<PayCycle>"
    Then user has to enters the Payperiod "<Payrollperiod>"
    Then user clicks on Regular
    Then user clicks on Continue

    Examples:
      |Payrolltype|Payrollperiod|PayCycle|
      |R           |3         |B        |


  @PeriodEnd @basic @all
    @PATC71

  Scenario Outline: Automate Period End Processing Flow for Regular and Special period
    Given User navigates Period End Processing Form
    Then user should enter the Paytype "<Payrolltype>"
    Then user should enter PayCycle "<PayCycle>"
    Then user should enter the Payperiod "<Payrollperiod>"
    Then user clicks on Regular and Specials
    Then user should click on Continue

    Examples:
      |Payrolltype|Payrollperiod|PayCycle|
      |R           |5          |B        |


  @PeriodEnd @basic @all
    @PATC72
  Scenario Outline: Automate Period End Processing Flow for Special period
    Given User goes to Period End Processing Form
    Then user selects to enter the Paytype "<Payrolltype>"
    Then user selects to enter PayCycle "<PayCycle>"
    Then user selects to enter the Payperiod "<Payrollperiod>"
    Then user clicks on Specials

    Then user selects to click on Continue

    Examples:
      |Payrolltype|Payrollperiod|PayCycle|
      |R           |3          |B        |
