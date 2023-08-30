#Author :Abhinandan Mannurkar

Feature: Regular Earnings Entry Flow

  @RegularEarnings @basic @all
    @PATC61
  Scenario Outline: Automate Regular Earnings Entry Flow
    Given User opens Regular Earnings Entry
    Then user has to click on Add
    Then user has to enter the Payrolltype "<Payrolltype>"
    Then user has to enters the Payrollperiod "<Payrollperiod>"
    Then user has to pass the Batchentrydate"<Batchentrydate>"
    Then user has to click Save
    Then user to enter Employeenumber "<Empnum>"
    Then user clicks add on next screen
    Then has to click on Save
    Then user has to click on Add
    Then user has to enter common Date "<Date1>"
    Then user has to pass Earningscode "<Earningscode>"
    Then pass some Hours "<Hours1>"
    Then click Add and Processing Complete

    Examples:
      |Payrolltype|Payrollperiod|Batchentrydate|Empnum|Date1|Earningscode|Hours1|
      |R           |10          |05-14-2021    |10244    |*   |0           |80   |


  @RegularEarnings @basic @all
    @PATC62
  Scenario Outline: Automate Regular Earnings Entry Flow to add Distribution code
    Given User opens Regular Earnings Entry with Distribution code
    Then user should be clicking on Add
    Then user should enter the Payrolltype "<Payrolltype>"
    Then user should enter the Payrollperiod "<Payrollperiod>"
    Then user should pass the Batchentrydate"<Batchentrydate>"
    Then user should click Save
    Then user should enter Employeenumber "<Empnum>"
    Then user should click add on next screen
    Then user should click on Save and Add
    Then user should enter common Date "<Date1>"
    Then user should pass Earningscode "<Earningscode>"
    Then user should pass some Hours "<Hours1>"
    Then user should send order and distribution code "<Order>" & "<DistributionCode>"
    Then user should click Add and Processing Complete

    Examples:
      |Payrolltype|Payrollperiod|Batchentrydate|Empnum|Date1|Earningscode|Hours1|Order|DistributionCode|
      |R           |10          |05-14-2021    |10244    |*   |0           |80   |100 |1015            |
