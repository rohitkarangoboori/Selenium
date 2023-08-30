#Author :Abhinandan Mannurkar

Feature: Restore Payroll After Reg. Pay

@RestorePayroll @basic @all
@PATC63
  Scenario Outline: To automate Restore Payroll After Reg. Pay Form
  Given user passed URL for Restore Payroll After Pay
  Then user passed payrolltype"<Payrolltype>"
  Then user send payrollcycle"<Payrollcycle>"
  Then user clicks on ContinueRestore
  Then user clicked to Continue

  Examples:
      |Payrolltype|Payrollcycle|
      |R          |B           |
