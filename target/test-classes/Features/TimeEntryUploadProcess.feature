#Author :Abhinandan Mannurkar

Feature: Create a Time Entry Upload Process Flow
  #QPA-DE-003
  @TimeUpload
  @PATC06

    Scenario Outline: Automate Time Entry Upload Process
    Given user navigates to Time Entry Upload Form
    Then user clicks on upload button
    Then select the Paytype"<paytype>"
    Then user gives the Paycycle"<Paycycle>"
    Then pass the Payperiod "<payperiod>"
    Then user enters the date "<batchdate>"
    Then user click save

    Examples:
      |paytype|Paycycle|payperiod|batchdate|
      |R      |B       |9        |04-28-2018|

  @TimeUpload
    @PATC07

  Scenario Outline: Automate Time Entry Upload by Unit Process
    Given user navigated to Time Entry Upload Form
    Then user clicked on Select By Unit button
    Then user clicked on Upload by Unit button
    Then user selects the Paytype"<paytype>"
    Then user selects the Paycycle"<Paycycle>"
    Then user selects the Payperiod "<payperiod>"
    Then user selects the date "<batchdate>"
    Then user clicks on save

    Examples:
      |paytype|Paycycle|payperiod|batchdate|
      |R      |B       |9        |04-28-2018|

  @TimeUpload
    @PATC08

  Scenario Outline: Automate Time Entry Upload by SU Process
    Given user should navigate to Time Entry Upload Form
    Then user should click on Select By Unit button
    Then user should click on UploadSU button
    Then user should select the Paytype"<paytype>"
    Then user should select the Paycycle"<Paycycle>"
    Then user should select the Payperiod "<payperiod>"
    Then user should select the date "<batchdate>"
    Then user should click on save

    Examples:
      |paytype|Paycycle|payperiod|batchdate|
      |R      |B       |9        |04-28-2018|
