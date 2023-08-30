#Author :Abhinandan Mannurkar

Feature: FastTrack Entry Flow
#QPA-DE-001
  @Payroll @basic @all
  @PATC01
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

  #QPA-DE-002
    @Payroll @basic @all
    @PATC02
    Scenario: Edit Earnings List
      Given user selects batch for editing
      Then click on retrieve
      Then click on edit list
      Then  click generate report

#QPA-DE-002
    @Payroll @basic @all
      @PATC03
      Scenario: Approval Batch Earnings
        Given user selects batch for approval
        Then user clicks on display
        Then click on approval
        Then user approves batch

 #QPA-CP-001
    @Payroll @basic @all
    @PATC04
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


  #QPA-CP-002
    @Payroll @basic @all
    @PATC05
  Scenario Outline: Check Print/Re-print
    Given user passed URL for Check Print
    Then user selects payrolltype"<Payrolltype>"
    Then user passed payrollcycle"<Payrollcycle>"
    Then user gives payperiod"<PayPeriod>"
    Then user clicks Regular

    Examples:
      |Payrolltype|Payrollcycle|PayPeriod|
      |R          |B           |10       |


  @Payroll @advanced
  @PATC18 @all
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

    @Payroll @advanced
    @PATC19 @all
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

  @Payroll
    @PATC20 @all
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


  @Payroll @advanced
    @PATC21 @all
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


  @Payroll
    @PATC22 @all
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

  @Payroll @advanced
  @PATC23 @all
  Scenario: To Print Employee Totals in Edit Earnings List
    Given user navigates to batch for editing
    Then user click on retrieve
    Then user clicks on print employee totals checkbox
    Then user click on edit list
    Then  user clicks to generate report

  @Payroll @advanced
  @PATC24 @all
  Scenario: To Sort by Batch Report Sheet No in Edit Earnings List
    Given user goes to batch for editing
    Then user should click on retrieve
    Then user selects sheet no on batch report sort
    Then user should click on edit list
    Then  user should click to generate report


  @Payroll @advanced
  @PATC25 @all
  Scenario: To Sort by Batch Report Employee name in Edit Earnings List
    Given user navigated to batch for editing
    Then user should be clicking on retrieve
    Then user selects Employee name on batch report sort
    Then user should be clicking on edit list
    Then  user should be clicking to generate report


  @Payroll @advanced
  @PATC26 @all
  Scenario: To Sort by Batch Report Employee number and date in Edit Earnings List
    Given user opens batch for editing
    Then user clicks on retrieve
    Then user selects Employee number and date on batch report sort
    Then user clicks on edit list
    Then  user click to generate report

  @Payroll @advanced
  @PATC27 @all
  Scenario: To check unApproved Batch Earnings
    Given user navigates to batch for approval
    Then user should click on display
    Then user should click on approval
    Then user clicks on DonotApproveBatch

  @Payroll @advanced
  @PATC28 @all
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

  @Payroll @advanced
  @PATC29 @all
  Scenario Outline: To check Range Batch Earnings
    Given user goes batch for approval
    Then user should be clicking on display
    Then user should click on rangeapproval
    Then user enters payrolltype "<Payrolltype>"
    Then user clicks on approverange

    Examples:
    |Payrolltype|
    |R          |

  @Payroll @advanced
    @PATC30 @all
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

  @Payroll @advanced
    @PATC31 @all
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

  @Payroll @advanced
    @PATC32 @all
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


  @Payroll @advanced
    @PATC33 @all
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

  @Payroll @advanced
    @PATC34 @all
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

  @Payroll @advanced
    @PATC35 @all
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

  @Payroll @advanced
    @PATC36 @all
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


  @Payroll @advanced
    @PATC37 @all
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

  @Payroll @advanced
    @PATC38 @all
  Scenario Outline: Check Print/Re-print for Advances Option
    Given user navigates to URL for Check Print form
    Then user enters Payrolltype "<Payrolltype>"
    Then user enters Payrollcycle "<Payrollcycle>"
    Then user enters Payperiod "<PayPeriod>"
    Then user clicks on Advances

    Examples:
      |Payrolltype|Payrollcycle|PayPeriod|
      |R          |B           |24       |


  @Payroll @advanced
    @PATC39 @all
  Scenario Outline: Check Print/Re-print for Duplications Option
    Given user should go to URL for Check Print form
    Then user should give Payrolltype "<Payrolltype>"
    Then user should give Payrollcycle "<Payrollcycle>"
    Then user should give Payperiod "<PayPeriod>"
    Then user clicks on Duplications

    Examples:
      |Payrolltype|Payrollcycle|PayPeriod|
      |R          |B           |24       |

  @Payroll @advanced
    @PATC40 @all
  Scenario Outline: Check Print/Re-print for Issued Option
    Given user shall navigate to URL for Check Print form
    Then user shall Payrolltype "<Payrolltype>"
    Then user shall Payrollcycle "<Payrollcycle>"
    Then user shall Payperiod "<PayPeriod>"
    Then user clicks on Issued

    Examples:
      |Payrolltype|Payrollcycle|PayPeriod|
      |R          |B           |24       |

  @Payroll @advanced
    @PATC41 @all
  Scenario Outline: Check Print/Re-print for Manual Option
    Given user goes to URL for Check Print form
    Then user selects Payrolltype "<Payrolltype>"
    Then user selects Payrollcycle "<Payrollcycle>"
    Then user selects Payperiod "<PayPeriod>"
    Then user clicks on Manual

    Examples:
      |Payrolltype|Payrollcycle|PayPeriod|
      |R          |B           |24       |


