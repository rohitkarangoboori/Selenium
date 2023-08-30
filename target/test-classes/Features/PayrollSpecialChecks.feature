#Author :Abhinandan Mannurkar

Feature: Create a Special Payroll Check Flow
  # Jira
  @SpecialCheckPayroll @basic
    @PATC12
  Scenario Outline: Automate Manual Special Payroll Check Process
    Given user chooses to navigate to Special Payroll Check Form
    Then enters payrolltype "<paytype>"
    Then enters paycycle "<paycycle>"
    Then enters payperiod "<payperiod>"
    Then user selects transaction type from dropdown
    Then user click on validate
    Then user accepts
    Then user enters employee "<employeenumber>" validates and accepts
    Then user has to add records
    Then add date "<date>" earningcode "<earningcode>" and hours "<hours>"
    Then user has to click add
    Then click on ProcessingComplete and accept records
    Then click Complete processing

    Examples:
      |paytype|paycycle|payperiod|employeenumber|date|earningcode|hours|
      |R      |B       |24       |10043         |11-20-2020|0    |80   |

  @SpecialCheckPayroll @basic
  @PATC14
  Scenario Outline: Automate the Advance type Special Payroll Checks
    Given enter to navigate to Special Payroll Check Form
    Then selects payrolltype "<paytype>"
    Then selects paycycle "<paycycle>"
    Then selects payperiod "<payperiod>"
    Then user gives advance as transaction type from dropdown
    Then user gives employee "<employeenumber>" validates and accepts
    Then user enters the amount "<amount>"
    Then user clicks to continue
    Then user clicks Complete processing

  Examples:
    |paytype|paycycle|payperiod|employeenumber|amount|
    |R      |B       |24|10043         |1000  |

  @SpecialCheckPayroll @basic
    @PATC15
    Scenario Outline: Automate the Issue type Special Payroll Checks
      Given navigates to Special Payroll Check Form
      Then entered payrolltype "<paytype>"
      Then entered paycycle "<paycycle>"
      Then entered payperiod "<payperiod>"
      Then user gives issue transaction type from dropdown
      Then user to enter employee "<employeenumber>" validates and accepts
      Then user  to add records
      Then user to add date "<date>" earningcode "<earningcode>" and hours "<hours>"
      Then user  to click add
      Then user click on ProcessingComplete and accept records
      Then user click on issue message and Complete processing

      Examples:
        |paytype|paycycle|payperiod|employeenumber|date|earningcode|hours|
        |R      |B       |24|10043         |11-20-2020|0    |80   |

  @SpecialCheckPayroll @basic
  @PATC16
  Scenario Outline: Automate the Duplication type Special Payroll Checks
    Given user  to navigate to Special Payroll Check Form
    Then enter payrolltype "<paytype>"
    Then enter paycycle "<paycycle>"
    Then enter payperiod "<payperiod>"
    Then user gives duplication transaction type from dropdown
    Then user clicked on validate
    Then user to accept
    Then user enters employee "<employeenumber>"
    Then user provides checknumber and checkdate"<checkdate>"
    Then user validates and accepts
    Then user clicked Complete processing


    Examples:
      |paytype|paycycle|payperiod|employeenumber|checkdate|
      |R      |B       |24|10043         |11-25-2020      |

  @SpecialCheckPayroll @basic
  @PATC17
  Scenario Outline: Automate the Cancellation type Special Payroll Checks
    Given navigated to Special Payroll Check Form
    Then user to enter payrolltype "<paytype>"
    Then has to enter paycycle "<paycycle>"
    Then user to enter payperiod "<payperiod>"
    Then user gives cancellation transaction type from dropdown
    Then user to enter employee "<employeenumber>"
    Then user sends checknumber and checkdate"<checkdate>"
    Then user has to validate and accept
    Then user has to click Complete processing

    Examples:
      |paytype|paycycle|payperiod|employeenumber|checkdate|
      |R      |B       |24|10043         |11-25-2020      |


  @SpecialCheckPayroll @advanced
    @PATC46
  Scenario Outline: Automate the Change Earning and Change Deductions in Special Payroll Checks
    Given User navigates to Special payroll checks form
    Then user entered payrolltype "<paytype>"
    Then user entered paycycle "<paycycle>"
    Then user entered payperiod "<payperiod>"
    Then user clicks accept
    Then user entered employee "<employeenumber>"
    Then user clicks to add records
    Then user adds data "<date>" & "<date2>" & "<earningcode>" & "<earningcode2>" & "<hours>" & "<hours2>"
    Then user selects to click add
    Then user clicks on Processing Complete
    Then user to click change earnings
    Then user to click modify icon
    Then user changes hours and click modify
    Then user clicked Processing Complete and accept
    Then user selects an arrow from row and clicks on delete
    Then user again clicks Processing Complete and accepts
    Then user clicks on Complete processing

    Examples:
      |paytype|paycycle|payperiod|employeenumber|date|earningcode|hours|date2|earningcode2|hours2|
      |R      |B       |24|10043               |*   |0          |40   |*        |4            |40    |

  @SpecialCheckPayroll @advanced
    @PATC47
  Scenario Outline: Automate Select/De-select option in Special Payroll Check Process
    Given user has to navigate to Special Payroll Check Form
    Then user has to enter payrolltype "<paytype>"
    Then user has to enter paycycle "<paycycle>"
    Then user has to enter payperiod "<payperiod>"
    Then user has to enter transaction type from dropdown
    Then user shall click on validate
    Then user user has to accept
    Then user has to enter employee "<employeenumber>"
    Then user to click on Select/Deselect option and perform inclusions
    Then user has to accept the options
    Then user has to enter add records
    Then user has to enter add date "<date>" earningcode "<earningcode>" and hours "<hours>"
    Then user shall click add
    Then user shall click on ProcessingComplete and accept records
    Then user shall click Complete processing

    Examples:
      |paytype|paycycle|payperiod|employeenumber|date|earningcode|hours|
      |R      |B       |24       |10043         |11-20-2020|0    |80   |

  @SpecialCheckPayroll @advanced
    @PATC48
  Scenario Outline: Automate the Processing options in Special Payroll Checks
    Given user navigated to Special Payroll Check Form
    Then user should enter payrolltype "<paytype>"
    Then user should enter paycycle "<paycycle>"
    Then user should enter payperiod "<payperiod>"
    Then user should enter transaction type from dropdown
    Then user should enter employee "<employeenumber>"
    Then user should check processing options
    Then user should add records
    Then user should enter add date "<date>" earningcode "<earningcode>" and hours "<hours>"
    Then user should enter click add
    Then user should click on ProcessingComplete and accept records
    Then user should click on issue message and Complete processing

    Examples:
      |paytype|paycycle|payperiod|employeenumber|date|earningcode|hours|
      |R      |B       |24|10043         |11-20-2020|0    |80   |
