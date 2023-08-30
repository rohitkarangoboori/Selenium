#Author :Abhinandan Mannurkar

@Smoke
Feature: Smoke Test for Forms :Payroll/PayModel/SpecialCheckPayroll/RegularEarnings/EarningsGeneration/DirectDeposit/SalaryVariance/GenMiscEarnings/RestorePayroll/PeriodEnd/W2Processing/PayrollPA/W2WorkFile/CombEarnDed/QuarterlyReport/EmployeeInquiry/T4 Processing

  Scenario Outline: Automate FastTrack Entry Flow
    Given User opens FastTrack Earnings Entry
    Then user clicks on Add
    Then user enter the Payrolltype "<Payrolltype>"
    Then enters the Payrollperiod "<Payrollperiod>"
    Then user pass the Batchentrydate"<Batchentrydate>"
    Then user clicks Save
    Then click add on next screen
    Then enter lookup Employees "<Employee1>" & "<Employee2>" & "<Employee3>" & "<Employee4>" & "<Employee5>"
    Then enter common Date "<Date1>"
    Then pass Earningscode "<Earningscode>"
    Then pass some Hours "<Hours1>" & "<Hours2>" & "<Hours3>" & "<Hours4>" & "<Hours5>"

    Examples:
      |Payrolltype|Payrollperiod|Batchentrydate|Employee1|Employee2|Employee3|Employee4|Employee5|Date1|Earningscode|Hours1|Hours2|Hours3|Hours4|Hours5|
      |R           |10          |01-01-2021    |10244    |10101    |10289|10201|10256|*   |0           |40   |20|20|80|40|

  Scenario: Edit Earnings List
    Given user selects batch for editing
    Then click on retrieve
    Then click on edit list
    Then  click generate report


  Scenario: Approval Batch Earnings
    Given user selects batch for approval
    Then user clicks on display
    Then click on approval
    Then user approves batch


  Scenario Outline: Regular Payroll Check Processing
    Given user enters URL for check processing
    Then user enter payrolltype "<PayrollType>"
    Then user passes payrollcycle"<PayrollCycle>"
    Then user enter payperiod"<Payperiod>"
    Then user enters futureperiod "<FuturePeriod>"
    Then user pass firstperiod "<FirstPeriod>"
    Then user enters lastperiod "<LastPeriod>"
    Then user clicks on validate
    Then user clicks to Process
    Then user clicks Deletebackup

    Examples:
      |PayrollType|PayrollCycle|Payperiod|FuturePeriod|FirstPeriod|LastPeriod|
      |R          |B           |10       |11          |10         |11        |


  Scenario Outline: Check Print/Re-print
    Given user passed URL for Check Print
    Then user selects payrolltype"<Payrolltype>"
    Then user passed payrollcycle"<Payrollcycle>"
    Then user gives payperiod"<PayPeriod>"
    Then user clicks Regular

    Examples:
      |Payrolltype|Payrollcycle|PayPeriod|
      |R          |B           |10       |


  Scenario Outline: Automate FastTrack Entry Flow to Sort Employees
    Given User naviagtes to FastTrack Earnings Entry
    Then user to click on Add
    Then user to enter the "<Payrolltype>"
    Then user to enters the "<Payrollperiod>"
    Then user to pass the "<Batchentrydate>"
    Then user to click Save
    Then user to click add on next screen
    Then user to enter lookup "<Employee1>" & "<Employee2>" & "<Employee3>" & "<Employee4>" & "<Employee5>"
    Then user to enter common "<Date1>"
    Then user to pass "<Earningscode>"
    Then user to pass some "<Hours1>" & "<Hours2>" & "<Hours3>" & "<Hours4>" & "<Hours5>"
    Then user to click Sort By Empl
    Then user to click exit
    Then user to click Updateall

    Examples:
      |Payrolltype|Payrollperiod|Batchentrydate|Employee1|Employee2|Employee3|Employee4|Employee5|Date1|Earningscode|Hours1|Hours2|Hours3|Hours4|Hours5|
      |R           |10          |01-01-2021    |10244    |10101    |10289|10201|10256|*   |0           |40   |20|20|80|40|

  Scenario Outline: Automate FastTrack Entry Flow to add Distribution Code
    Given user opens to FastTrack Earnings Entry
    Then click to Add data
    Then enter the payrolltype "<Payrolltype>"
    Then enter the payrollperiod "<Payrollperiod>"
    Then enter the Batchentrydate "<Batchentrydate>"
    Then click  on Save
    Then clicks add on next screen
    Then enter employee info "<Employee1>" & "<Employee2>" & "<Employee3>" & "<Employee4>" & "<Employee5>"
    Then enter the common "<Date1>"
    Then user to enter "<Earningscode>"
    Then user to enter hours "<Hours1>" & "<Hours2>" & "<Hours3>" & "<Hours4>" & "<Hours5>"
    Then user to send order and  distribution code "<Order>" & "<Distribution code>"
    Then click Updateall

    Examples:
      |Payrolltype|Payrollperiod|Batchentrydate|Employee1|Employee2|Employee3|Employee4|Employee5|Date1|Earningscode|Hours1|Hours2|Hours3|Hours4|Hours5|Order|Distribution code|
      |R           |10          |01-01-2021    |10244    |10101    |10289|10201|10256|*   |0           |40   |20|20|80|40|100                   |  1015|

  Scenario Outline: Automate FastTrack Entry Flow to add Equipment
    Given user selects FastTrack Earnings Entry
    Then user selects to click on Add
    Then user selects to enter the payrolltype "<Payrolltype>"
    Then user selects to enters the payroll period "<Payrollperiod>"
    Then user selects to pass the batchentrydate"<Batchentrydate>"
    Then user selects to click Save
    Then user selects to click add on next screen
    Then user selects to enter employees "<Employee1>" & "<Employee2>" & "<Employee3>" & "<Employee4>" & "<Employee5>"
    Then user selects to enter common date"<Date1>"
    Then user selects to pass earnings "<Earningscode>"
    Then user selects to pass some hours "<Hours1>" & "<Hours2>" & "<Hours3>" & "<Hours4>" & "<Hours5>"
    Then user to enter Equipment "<Equipment>"
    Then click Save
    Then user selects to click Updateall

    Examples:
      |Payrolltype|Payrollperiod|Batchentrydate|Employee1|Employee2|Employee3|Employee4|Employee5|Date1|Earningscode|Hours1|Hours2|Hours3|Hours4|Hours5|Equipment|
      |R           |10          |01-01-2021    |10244    |10101    |10289|10201|10256|*   |0           |40   |20|20|80|40|00133                                  |


  Scenario Outline: Automate FastTrack Entry Flow to add Rate
    Given user chose FastTrack Earnings Entry
    Then user choose to click on Add
    Then user choose to enter the payrolltype "<Payrolltype>"
    Then user choose to enters the payroll period "<Payrollperiod>"
    Then user choose to pass the batchentrydate"<Batchentrydate>"
    Then user choose to click Save
    Then user choose to click add on next screen
    Then user choose to enter employees "<Employee1>" & "<Employee2>" & "<Employee3>" & "<Employee4>" & "<Employee5>"
    Then user choose to enter common date"<Date1>"
    Then user choose to pass earnings "<Earningscode>"
    Then user choose to pass some hours "<Hours1>" & "<Hours2>" & "<Hours3>" & "<Hours4>" & "<Hours5>"
    Then user to enter Rate "<Rate>"
    Then user choose to click Updateall

    Examples:
      |Payrolltype|Payrollperiod|Batchentrydate|Employee1|Employee2|Employee3|Employee4|Employee5|Date1|Earningscode|Hours1|Hours2|Hours3|Hours4|Hours5|Rate|
      |R           |10          |01-01-2021    |10244    |10101    |10289|10201|10256|*   |0           |40   |20|20|80|40|25                                  |


  Scenario Outline: Automate FastTrack Entry Flow to add future date then period year
    Given goes to FastTrack Earnings Entry
    Then have to click on Add
    Then have to enter the payrolltype "<Payrolltype>"
    Then have to enters the payroll period "<Payrollperiod>"
    Then have to pass the batchentrydate"<Batchentrydate>"
    Then have to click Save
    Then have to click add on next screen
    Then have to enter employees "<Employee1>" & "<Employee2>" & "<Employee3>" & "<Employee4>" & "<Employee5>"
    Then have to enter common date"<Date1>"
    Then have to pass earnings "<Earningscode>"
    Then have to pass some hours "<Hours1>" & "<Hours2>" & "<Hours3>" & "<Hours4>" & "<Hours5>"
    Then have to click Updateall

    Examples:
      |Payrolltype|Payrollperiod|Batchentrydate|Employee1|Employee2|Employee3|Employee4|Employee5|Date1|Earningscode|Hours1|Hours2|Hours3|Hours4|Hours5|
      |R           |10          |01-01-2021    |10244    |10101    |10289|10201|10256|01-01-2022   |0           |40   |20|20|80|40|


  Scenario: To Print Employee Totals in Edit Earnings List
    Given user navigates to batch for editing
    Then user click on retrieve
    Then user clicks on print employee totals checkbox
    Then user click on edit list
    Then  user clicks to generate report


  Scenario: To Sort by Batch Report Sheet No in Edit Earnings List
    Given user goes to batch for editing
    Then user should click on retrieve
    Then user selects sheet no on batch report sort
    Then user should click on edit list
    Then  user should click to generate report


  Scenario: To Sort by Batch Report Employee name in Edit Earnings List
    Given user navigated to batch for editing
    Then user should be clicking on retrieve
    Then user selects Employee name on batch report sort
    Then user should be clicking on edit list
    Then  user should be clicking to generate report


  Scenario: To Sort by Batch Report Employee number and date in Edit Earnings List
    Given user opens batch for editing
    Then user clicks on retrieve
    Then user selects Employee number and date on batch report sort
    Then user clicks on edit list
    Then  user click to generate report


  Scenario: To check unApproved Batch Earnings
    Given user navigates to batch for approval
    Then user should click on display
    Then user should click on approval
    Then user clicks on DonotApproveBatch


  Scenario Outline: To check UnlockGLDate Batch Earnings
    Given user goes to batch for approval
    Then user have to click on display
    Then user have to click on unlockgldate
    Then user sends GL posting date "<Date>"
    Then user clicks on Approve
    Then user clicks on Approvebatch "<Date>"

    Examples:
      |Date|
      |05-07-2020|


  Scenario Outline: To check Range Batch Earnings
    Given user goes batch for approval
    Then user should be clicking on display
    Then user should click on rangeapproval
    Then user enters payrolltype "<Payrolltype>"
    Then user clicks on approverange

    Examples:
      |Payrolltype|
      |R          |


  Scenario Outline: Regular Payroll Check Processing to Process Audit Mode
    Given user navigates to check processing
    Then user entered payroll type "<PayrollType>"
    Then user entered payroll cycle "<PayrollCycle>"
    Then user entered pay period "<Payperiod>"
    Then user entered future period "<FuturePeriod>"
    Then user entered First period "<FirstPeriod>"
    Then user entered Last period "<LastPeriod>"
    Then user clicked to validate
    Then user clicks to Process Audit mode

    Examples:
      |PayrollType|PayrollCycle|Payperiod|FuturePeriod|FirstPeriod|LastPeriod|
      |R          |B           |10       |11          |10         |11        |


  Scenario Outline: Regular Payroll Check Processing to verify Re-enter data
    Given user navigated to check processing
    Then user to enter payroll type "<PayrollType>"
    Then user to enter payroll cycle "<PayrollCycle>"
    Then user to enter pay period "<Payperiod>"
    Then user to enter future period "<FuturePeriod>"
    Then user to enter First period "<FirstPeriod>"
    Then user to enter Last period "<LastPeriod>"
    Then user to click on validate
    Then user clicks to Re-enter data to clear screen

    Examples:
      |PayrollType|PayrollCycle|Payperiod|FuturePeriod|FirstPeriod|LastPeriod|
      |R          |B           |10       |11          |10         |11        |


  Scenario Outline: Regular Payroll Check Processing to verify Print -PA/GL Payroll Process Audit Recap
    Given user to navigate to check processing
    Then user goes to  payroll type "<PayrollType>"
    Then user goes to payroll cycle "<PayrollCycle>"
    Then user goes to enter pay period "<Payperiod>"
    Then user goes to enter future period "<FuturePeriod>"
    Then user goes to enter First period "<FirstPeriod>"
    Then user goes to enter Last period "<LastPeriod>"
    Then user checks to Print option -PA/GL Payroll Process Audit Recap
    Then user goes to click on validate
    Then user clicked to Process
    Then user clicks to Deletebackup

    Examples:
      |PayrollType|PayrollCycle|Payperiod|FuturePeriod|FirstPeriod|LastPeriod|
      |R          |B           |10       |11          |10         |11        |



  Scenario Outline: Regular Payroll Check Processing to verify Print -Employer Benefit Reallocation by Dept
    Given user should navigate to check processing
    Then user should go to  payroll type "<PayrollType>"
    Then user should go to payroll cycle "<PayrollCycle>"
    Then user should go to enter pay period "<Payperiod>"
    Then user should go to enter future period "<FuturePeriod>"
    Then user should go to enter First period "<FirstPeriod>"
    Then user should enter Last period "<LastPeriod>"
    Then user checks to Print option -Employer Benefit Reallocation by Dept
    Then user should go to click on validate
    Then user should go to Process
    Then user should go to Deletebackup

    Examples:
      |PayrollType|PayrollCycle|Payperiod|FuturePeriod|FirstPeriod|LastPeriod|
      |R          |B           |10       |11          |10         |11        |


  Scenario Outline: Regular Payroll Check Processing to verify Include -Direct Debits on Cheque Register
    Given user passes URl to check processing
    Then user passes  payroll type "<PayrollType>"
    Then user passes payroll cycle "<PayrollCycle>"
    Then user passes pay period "<Payperiod>"
    Then user passes future period "<FuturePeriod>"
    Then user passes First period "<FirstPeriod>"
    Then user passes Last period "<LastPeriod>"
    Then user checks to Include option -Direct Debits on Cheque Register
    Then user passes to click on validate
    Then user passes to Process
    Then user passes to Deletebackup

    Examples:
      |PayrollType|PayrollCycle|Payperiod|FuturePeriod|FirstPeriod|LastPeriod|
      |R          |B           |10       |11          |10         |11        |


  Scenario Outline: Regular Payroll Check Processing to verify Include -Deduction starting/ending in Period
    Given user has to navigate to check processing
    Then user has to enter payroll type "<PayrollType>"
    Then user has to enter payroll cycle "<PayrollCycle>"
    Then user has to enter pay period "<Payperiod>"
    Then user has to enter future period "<FuturePeriod>"
    Then user has to enter First period "<FirstPeriod>"
    Then user has to enter Last period "<LastPeriod>"
    Then user has to enter Include option -Deduction starting/ending in Period
    Then user has to click on validate
    Then user has to click Process
    Then user has to Deletebackup

    Examples:
      |PayrollType|PayrollCycle|Payperiod|FuturePeriod|FirstPeriod|LastPeriod|
      |R          |B           |10       |11          |10         |11        |


  Scenario Outline: Regular Payroll Check Processing to verify Check message
    Given user gives URL to navigate to check processing
    Then user gives value to  payroll type "<PayrollType>"
    Then user gives value to payroll cycle "<PayrollCycle>"
    Then user gives value to enter pay period "<Payperiod>"
    Then user gives value to enter future period "<FuturePeriod>"
    Then user gives value to enter First period "<FirstPeriod>"
    Then user gives value to Last period "<LastPeriod>"
    Then user checks to pass check message
    Then user to clicked on validate
    Then user to click on Process
    Then user to click on Deletebackup

    Examples:
      |PayrollType|PayrollCycle|Payperiod|FuturePeriod|FirstPeriod|LastPeriod|
      |R          |B           |10       |11          |10         |11        |



  Scenario Outline: Regular Payroll Check Processing to verify message in messagebox
    Given user sends URL to navigate to check processing
    Then user sends value to  payroll type "<PayrollType>"
    Then user sends value to payroll cycle "<PayrollCycle>"
    Then user sends value to enter pay period "<Payperiod>"
    Then user sends value to enter future period "<FuturePeriod>"
    Then user sends value to enter First period "<FirstPeriod>"
    Then user sends value to Last period "<LastPeriod>"
    Then user sends new message in messagebox
    Then user have to click on validate
    Then user have to click on Process
    Then user have to click on Deletebackup

    Examples:
      |PayrollType|PayrollCycle|Payperiod|FuturePeriod|FirstPeriod|LastPeriod|
      |R          |B           |10       |11          |10         |11        |


  Scenario Outline: Check Print/Re-print for Advances Option
    Given user navigates to URL for Check Print form
    Then user enters Payrolltype "<Payrolltype>"
    Then user enters Payrollcycle "<Payrollcycle>"
    Then user enters Payperiod "<PayPeriod>"
    Then user clicks on Advances

    Examples:
      |Payrolltype|Payrollcycle|PayPeriod|
      |R          |B           |24       |


  Scenario Outline: Check Print/Re-print for Duplications Option
    Given user should go to URL for Check Print form
    Then user should give Payrolltype "<Payrolltype>"
    Then user should give Payrollcycle "<Payrollcycle>"
    Then user should give Payperiod "<PayPeriod>"
    Then user clicks on Duplications

    Examples:
      |Payrolltype|Payrollcycle|PayPeriod|
      |R          |B           |24       |


  Scenario Outline: Check Print/Re-print for Issued Option
    Given user shall navigate to URL for Check Print form
    Then user shall Payrolltype "<Payrolltype>"
    Then user shall Payrollcycle "<Payrollcycle>"
    Then user shall Payperiod "<PayPeriod>"
    Then user clicks on Issued

    Examples:
      |Payrolltype|Payrollcycle|PayPeriod|
      |R          |B           |24       |



  Scenario Outline: Check Print/Re-print for Manual Option
    Given user goes to URL for Check Print form
    Then user selects Payrolltype "<Payrolltype>"
    Then user selects Payrollcycle "<Payrollcycle>"
    Then user selects Payperiod "<PayPeriod>"
    Then user clicks on Manual

    Examples:
      |Payrolltype|Payrollcycle|PayPeriod|
      |R          |B           |24       |



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
      |R      |B       |24|10043               |*   |0          |40   |*        |2            |40    |


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



  Scenario Outline: Automate Direct Deposit Form to create file report
    Given User opens Direct Deposit Form
    Then user enters DDFrom "<DDFrom>"
    Then user enters DDTo "<DDTo>"
    Then enters the CheckReconciliation Date "<CheckReconciliationDate>"
    Then user enters GL Posting Date "<GLDate>"
    Then user to select Print DD Report
    Then user to select Create Direct Deposit File from dropdown
    Then user to enter Bank Posting Date "<BankPD>"
    Then user to enter DD File ID Modifier
    Then user clicks on CreateFilereport

    Examples:
      |DDFrom|DDTo|CheckReconciliationDate|GLDate|BankPD|
      |01-01-2020          |12-31-2020          |12-31-2020    |12-31-2020    |12-31-2020 |


  Scenario Outline: Automate Direct Deposit Form to Unreconcile Check
    Given user should navigate to Direct Deposit Form
    Then user should enter DDFrom "<DDFrom>"
    Then user should enter DDTo "<DDTo>"
    Then user should enter the CheckReconciliation Date "<CheckReconciliationDate>"
    Then user should enter GL Posting Date "<GLDate>"
    Then user should select blank sequence
    Then user should enter Bank Posting Date "<BankPD>"
    Then user should enter DD File ID Modifier
    Then user clicks on Unreconcile Check

    Examples:
      |DDFrom|DDTo|CheckReconciliationDate|GLDate|BankPD|
      |01-01-2020          |12-31-2020          |12-31-2020    |12-31-2020    |12-31-2020 |


  Scenario Outline: Automate Direct Deposit Form to Prenotification file report
    Given User navigates to Direct Deposit Form
    Then user goes to DDFrom "<DDFrom>"
    Then user goes to DDTo "<DDTo>"
    Then user enters the CheckReconciliation Date "<CheckReconciliationDate>"
    Then user sends GL Posting Date "<GLDate>"
    Then user selects Print DD Report
    Then user has to select Create Direct Deposit File from dropdown
    Then user has to enter Bank Posting Date "<BankPD>"
    Then user has to enter DD File ID Modifier
    Then user clicks on Prenotification file

    Examples:
      |DDFrom|DDTo|CheckReconciliationDate|GLDate|BankPD|
      |01-01-2020          |12-31-2020          |12-31-2020    |12-31-2020    |12-31-2020 |


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


  Scenario Outline: Automate Generate Misc Earnings Form
    Given User opens Generate Misc Earnings Form
    Then user sends Payroll Type "<PayrollType>"
    Then user sends Payroll Cycle "<PayrollCycle>"
    Then user to send Pay Period "<PayPeriod>"
    Then user to click on Generate Misc Earnings

    Examples:
      |PayrollType|PayrollCycle|PayPeriod|
      |R          |B          |4                    |


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


  Scenario Outline: To automate Restore Payroll After Reg. Pay Form
    Given user passed URL for Restore Payroll After Pay
    Then user passed payrolltype"<Payrolltype>"
    Then user send payrollcycle"<Payrollcycle>"
    Then user clicks on ContinueRestore
    Then user clicked to Continue

    Examples:
      |Payrolltype|Payrollcycle|
      |R          |B           |


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


  Scenario: Automate W2 Processing Form to generate a file
    Given User opens US Tax Processing Form
    Then user has to click accept for the year
    Then user has to click submit to generate file


  Scenario: Automate W2 Processing Form to generate Print Parameter Report
    Given User navigates to US Tax Processing Form
    Then user has to accept for the year
    Then user has to click Print Parameter

  Scenario Outline: Automate W2 Work File Maintenance Form to generate a file
    Given User opens Work File Maintenance Form
    Then user has to click next
    Then user has to edit the file
    Then user has to switch tab to another box
    Then user changes the Medicare Tax value "<MedicareTax>"
    Then user clicks on Save

    Examples:
      |MedicareTax|
      |400        |


  Scenario: Automate W2 Processing Form to generate a work file maintenance file change
    Given User navigated to US Tax Processing Form
    Then user clicks to accept for the year
    Then user deselects the file creation form and Prints Form
    Then user has to click accept to generate file


  Scenario Outline: Automate Combined Earnings and Deductions Form to generate Cancellation Report
    Given User opens Combined Earnings and Deductions Form
    Then user has to enter Payroll Type "<PayrollType>"
    Then user has to enter Payroll Cycle "<PayrollCycle>"
    Then user has to enter Payroll Period "<PayPeriod>"
    Then user clicks on Cancellations

    Examples:
      |PayrollType|PayrollCycle|PayPeriod|
      |R        |B             |24       |


  Scenario Outline: Automate Combined Earnings and Deductions Form to generate Duplications Report
    Given User navigates to Combined Earnings and Deductions Form
    Then user entered Payroll Type "<PayrollType>"
    Then user entered Payroll Cycle "<PayrollCycle>"
    Then user entered Payroll Period "<PayPeriod>"
    Then user to click on Duplications

    Examples:
      |PayrollType|PayrollCycle|PayPeriod|
      |R        |B             |24       |


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


  Scenario Outline: Automate Combined Earnings and Deductions Form to generate Regular Report
    Given User to open Combined Earnings and Deductions Form
    Then user choose to enter Payroll Type "<PayrollType>"
    Then user choose to enter Payroll Cycle "<PayrollCycle>"
    Then user choose to enter Payroll Period "<PayPeriod>"
    Then user clicks on Regular to generate report

    Examples:
      |PayrollType|PayrollCycle|PayPeriod|
      |R        |B             |24       |

  Scenario Outline: Automate Quarterly Report Tax Form to generate Federal Report
    Given User opens Quarterly Report Tax Form
    Then user has to select Generation Type
    Then user has to configure Exclude and Include Earnings "<Regular>" "<Overtime>" "<Vacation>" "<FMLA>" "<Sick>"
    Then user has to click accept
    Then user enters Report Period "<Period>"
    Then user enters FICA Max Wages "<FICAWages>"
    Then user enters Medicare Wages "<MedicareWages>"
    Then user enters factors for deduction "<F>" "<P>" "<Q>" "<T>" "<M>" "<N>"
    Then user clicks Generate Report

    Examples:
      |Regular|Overtime|Vacation|FMLA|Sick|FICAWages|MedicareWages|F|P|Q|T|M|N|Period|
      |P        |P     |P       |P   |P   |99999.00|99999.00      |.150|.200|.200|.250|.110|.200|2020|


  Scenario Outline: Automate Quarterly Report Tax Form to generate State Report
    Given User opens Quarterly Report State Tax Form
    Then user has selects Generation Type
    Then user selects the State to process "<State>"
    Then user has to click Generate Report

    Examples:
      |State|
      |AL   |

    Scenario Outline: Automate Payroll PA/HR/TE Synonym Form
    Given User opens Payroll Synonym Creation Form
    Then user enters Year "<Year>"
    Then user accepts to create Payroll Synonym Report

    Examples:
      |Year|
      |2021|


  Scenario Outline: Automate Employee Inquiry Form for BankData
    Given user opens Employee Inquiry Form
    Then user enters Employee Number "<EmpNum>"
    Then user clicks on BankData
    Then user selects an option and clicks on bank details and captures Screenshot

    Examples:
      |EmpNum|
      |10244 |


  Scenario Outline: Automate Employee Inquiry Form for Deduction Code Summary
    Given user opened Employee Inquiry Form
    Then user entered Employee Number "<EmpNum>"
    Then user clicks on Deduction Code Summary and captures Screenshot

    Examples:
      |EmpNum|
      |10244 |


  Scenario Outline: Automate Employee Inquiry Form for Deduction data
    Given user open Employee Inquiry Form
    Then user enter Employee Number "<EmpNum>"
    Then user clicks on Deduction data and captures Screenshot

    Examples:
      |EmpNum|
      |10244 |

  Scenario Outline: Automate Employee Inquiry Form for Earn Code Summary
    Given user selects Employee Inquiry Form
    Then user selects Employee Number "<EmpNum>"
    Then user clicks on Earn Code Summary and captures Screenshot

    Examples:
      |EmpNum|
      |10244 |

  Scenario Outline: Automate Employee Inquiry Form for Multiple Job
    Given user navigates to Employee Inquiry Form
    Then user sends Employee Number "<EmpNum>"
    Then user clicks on Multiple Job and captures Screenshot

    Examples:
      |EmpNum|
      |10244 |

  Scenario Outline: Automate Employee Inquiry Form for Personal Data
    Given user navigated to Employee Inquiry Form
    Then user choose to enter Employee Number "<EmpNum>"
    Then user clicks on Personal Data and captures Screenshot

    Examples:
      |EmpNum|
      |10244 |

  Scenario Outline: Automate Employee Inquiry Form for YtdAmounts
    Given user should open Employee Inquiry Form
    Then user should enter Employee Number "<EmpNum>"
    Then user clicks on YtdAmounts and captures Screenshot

    Examples:
      |EmpNum|
      |10244 |

  Scenario Outline: Automate Employee Inquiry Form for Ytd Check Summary
    Given user has to open Employee Inquiry Form
    Then user has to enter Employee Number "<EmpNum>"
    Then user clicks on Ytd Check Summary and captures Screenshot

    Examples:
      |EmpNum|
      |10244 |

    Scenario: Automate T4 Processing Form
    Given user opens CDN Tax Processing Form
    Then user selects the year in report name and clicks accept
    Then user checks the Checklist only option
    Then user has to click on Create New option and click enter


  Scenario Outline: Automate T4 Processing Form for Summary Report
    Given user navigated to CDN Tax Processing Form
    Then user selected the year in report name and clicks accept
    Then user has to enter MaxEIEarnings "<MaxEIEarnings>"
    Then user clicks on Summary Report

    Examples:
      |MaxEIEarnings|
      |54000        |


  Scenario Outline: Automate T4 Processing Form for Amendment CDN Report
    Given user has to navigate to CDN Tax Processing Form
    Then user has to select the year in report name and clicks accept
    Then user has to change to amendments tab
    Then user has to enter EmpNumber "<EmpNumber>" and replacement no
    Then user clicks on Amendement CDN

    Examples:
      |EmpNumber|
      |10244        |


    Scenario Outline: Automate T4 Processing Form for Amendment Modified Report
    Given user should open CDN Tax Processing Form
    Then user should select the year in report name and clicks accept
    Then user should change to amendments tab
    Then user should enter EmpNumber "<EmpNumber>" and replacement no
    Then user clicks on Amendement Modified

    Examples:
      |EmpNumber|
      |10244        |

    Scenario: Automate T4 Processing Form for Print Parameter
    Given user should navigate to CDN Tax Processing Form
    Then user should choose the year in report name and clicks accept
    Then click on Checklist only
    Then user has to click on Print Parameter


  Scenario Outline: Automate T4 Processing Form for Duplicate Tax Report
    Given user shall open CDN Tax Processing Form
    Then user shall select the year in report name and clicks accept
    Then user shall change to duplicate tab
    Then user shall enter EmpNumber "<EmpNumber>" and replacement no
    Then user clicks on Duplicate CDN Tax

    Examples:
      |EmpNumber|
      |10244        |


  Scenario Outline: Automate T4 Processing Form for Duplicate Modified Records
    Given user shall navigate to CDN Tax Processing Form
    Then user shall choose the year in report name and clicks accept
    Then user should change to duplicate tab
    Then user selects enter EmpNumber "<EmpNumber>" and replacement no
    Then user clicks on Duplicate Modified Records

    Examples:
      |EmpNumber|
      |10244        |


  Scenario: Automate T4 Processing Form for Modified T4's
    Given user navigates to CDN Tax Processing Form
    Then user chooses the year in report name and clicks accept
    Then user has to click on AllModifiedRecords

  Scenario: Automate T4 Tape Work File Maintenance Form
    Given User navigates to Tape Work File Maintenance Form
    Then User has to click on Search
    Then User has to select search option and click accept
    Then User has to click on Remuneration tab to edit
    Then User clicks modify button to change EI Wages
    Then user Saves to changes
