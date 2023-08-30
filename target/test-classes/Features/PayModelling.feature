#Author :Abhinandan Mannurkar

Feature: Create a Pay Modelling Entry
  #QPA-DE-004
@PayModel @basic
 @PATC11
  Scenario Outline: Automate Pay Modelling Entry

    Given user selects the Pay Modelling entry screen
    Then user enter employee number "<Employeenumber>"
    Then user enters pay period "<Payperiod>"
    Then user click to validate
    Then user clicks on Process
    Then user enters the earnings code "<EarningsCode1>" & "<EarningsCode2>" & "<EarningsCode3>"
    Then user enters hours "<hours1>" & "<hours2>" & "<hours3>"
    Then click on Add
    And Screenshot of screen is taken

    Examples:
    |Employeenumber|Payperiod|EarningsCode1|hours1|EarningsCode2|hours2|EarningsCode3|hours3|
    |10244         |10       |0           |64   |1              |8     |2            |8     |


  @PayModel @advanced
  @PATC42
  Scenario Outline: Add Pay Modelling Entry to include deduction

    Given user navigates to Pay Modelling entry screen
    Then user selects employee number "<Employeenumber>"
    Then user selects pay period "<Payperiod>"
    Then user clicks on include deduction starting/ending period
    Then user clicks to validate
    Then user click on Process
    Then user selects the earnings code "<EarningsCode1>" & "<EarningsCode2>" & "<EarningsCode3>"
    Then user sends hours "<hours1>" & "<hours2>" & "<hours3>"
    Then clicks on Add
    And Screenshots of screen is taken

    Examples:
      |Employeenumber|Payperiod|EarningsCode1|hours1|EarningsCode2|hours2|EarningsCode3|hours3|
      |10244         |10       |0           |64   |1              |8     |2            |8     |


  @PayModel @advanced
    @PATC43
  Scenario Outline: Automate Pay Modelling Entry to Change Earnings

    Given user should navigate to Pay Modelling entry screen
    Then user should enter employee number "<Employeenumber>"
    Then user should enters pay period "<Payperiod>"
    Then user should click to validate
    Then user should click on Process
    Then user should enter the earnings code "<EarningsCode1>" & "<EarningsCode2>" & "<EarningsCode3>"
    Then user should enter hours "<hours1>" & "<hours2>" & "<hours3>"
    Then user should click on Add
    Then click Change Earnings
    Then click add to modify new earnings
    Then add Earningscode "<EarningsCode4>" & "<hours4>" the hours and click change to add new row
    Then click Process to update earnings
    And user to get Screenshot of screen is taken

    Examples:
      |Employeenumber|Payperiod|EarningsCode1|hours1|EarningsCode2|hours2|EarningsCode3|hours3|EarningsCode4|hours4|
      |10244         |10       |0           |64   |1              |8     |2            |8     |3            |10    |


  @PayModel @advanced
    @PATC44
  Scenario Outline: Automate Pay Modelling Entry to Change Deductions

    Given user should be able to navigate to Pay Modelling entry screen
    Then user should be able to enter employee number "<Employeenumber>"
    Then user should be able to enter pay period "<Payperiod>"
    Then user should be able to click validate
    Then user should be able to click on Process
    Then user should be able to enter the earnings code "<EarningsCode1>" & "<EarningsCode2>" & "<EarningsCode3>"
    Then user should be able to enter hours "<hours1>" & "<hours2>" & "<hours3>"
    Then user should be able to click on Add
    Then click Change Deductions
    Then click Employee amount and change first row & third row and clear employee amount for dedcode
    Then click on third row for Employer amount and change amount
    Then click Process to change the deductions
    And user has to get Screenshot of screen is taken

    Examples:
      |Employeenumber|Payperiod|EarningsCode1|hours1|EarningsCode2|hours2|EarningsCode3|hours3|
      |10244         |10       |0           |64   |1              |8     |2            |8     |


  @PayModel @advanced
    @PATC45
  Scenario Outline: Automate Pay Modelling Entry to Change Parms

    Given user shall be able to navigate to Pay Modelling entry screen
    Then user shall be able to enter employee number "<Employeenumber>"
    Then user shall be able to enter pay period "<Payperiod>"
    Then user shall be able to click validate
    Then user shall be able to click on Process
    Then user shall be able to enter the earnings code "<EarningsCode1>" & "<EarningsCode2>" & "<EarningsCode3>"
    Then user shall be able to enter hours "<hours1>" & "<hours2>" & "<hours3>"
    Then user shall be able to click on Add
    Then click Change Parms
    Then click Annual deductions tab
    Then click on amount to change and enter start end date
    Then click Accept
    And user shall get Screenshot of screen is taken

    Examples:
      |Employeenumber|Payperiod|EarningsCode1|hours1|EarningsCode2|hours2|EarningsCode3|hours3|
      |10244         |10       |0           |64   |1              |8     |2            |8     |
