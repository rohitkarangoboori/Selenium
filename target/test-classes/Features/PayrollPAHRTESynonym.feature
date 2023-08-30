#Author :Abhinandan Mannurkar

Feature: Payroll PA/HR/TE Synonym Form

  @PayrollPA @basic
    @PATC77
  Scenario Outline: Automate Payroll PA/HR/TE Synonym Form
    Given User opens Payroll Synonym Creation Form
    Then user enters Year "<Year>"
    Then user accepts to create Payroll Synonym Report

    Examples:
      |Year|
      |2021|
