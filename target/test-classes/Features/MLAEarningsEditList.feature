#Author :Abhinandan Mannurkar

Feature: Create a MLA Earnings Edit List Flow

  #Note:  update TE101T set Status ='F', PA_Sub_System=NULL , PA_Batch =0,PA_sheet=0, PA_Seq=0 where PA_year >2019

  @MLAEarnings @all

  Scenario Outline: Automate MLA Earnings Edit List Form
    Given user has to navigate to Time Entry Upload Form
    Then user has to click on upload button
    Then user has to select the Paytype"<paytype>"
    Then user has to give the Paycycle"<Paycycle>"
    Then user has to pass the Payperiod "<periodpay>"
    Then user has to enter the date "<batchdate>"
    Then user enters filter to start date "<StartDate>" and end date "<EndDate>"
    Then user has to click save

    Given user navigates to MLA Earnings Edit Form
    Then user enters batch number
    Then user clicks on Retrieve
    Then user clicks on Edit list
    Then user clicks on MLASubmit

    Examples:
      |paytype|Paycycle|periodpay|batchdate|StartDate|EndDate|
      |R      |B       |24        |11-20-2020|11-09-2020|11-20-2020|
