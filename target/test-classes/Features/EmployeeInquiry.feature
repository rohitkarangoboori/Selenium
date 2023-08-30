#Author :Abhinandan Mannurkar

Feature: Employee Inquiry Form
  @EmployeeInquiry
    @PATC96
  Scenario Outline: Automate Employee Inquiry Form for BankData
    Given user opens Employee Inquiry Form
    Then user enters Employee Number "<EmpNum>"
    Then user clicks on BankData
    Then user selects an option and clicks on bank details and captures Screenshot

    Examples:
    |EmpNum|
    |10244 |

  @EmployeeInquiry
    @PATC84
  Scenario Outline: Automate Employee Inquiry Form for Deduction Code Summary
    Given user opened Employee Inquiry Form
    Then user entered Employee Number "<EmpNum>"
    Then user clicks on Deduction Code Summary and captures Screenshot

    Examples:
      |EmpNum|
      |10244 |

  @EmployeeInquiry
    @PATC87
  Scenario Outline: Automate Employee Inquiry Form for Deduction data
    Given user open Employee Inquiry Form
    Then user enter Employee Number "<EmpNum>"
    Then user clicks on Deduction data and captures Screenshot

    Examples:
      |EmpNum|
      |10244 |

  @EmployeeInquiry
    @PATC89
  Scenario Outline: Automate Employee Inquiry Form for Earn Code Summary
    Given user selects Employee Inquiry Form
    Then user selects Employee Number "<EmpNum>"
    Then user clicks on Earn Code Summary and captures Screenshot

    Examples:
      |EmpNum|
      |10244 |

  @EmployeeInquiry
    @PATC92
  Scenario Outline: Automate Employee Inquiry Form for Multiple Job
    Given user navigates to Employee Inquiry Form
    Then user sends Employee Number "<EmpNum>"
    Then user clicks on Multiple Job and captures Screenshot

    Examples:
      |EmpNum|
      |10244 |

  @EmployeeInquiry
    @PATC93
  Scenario Outline: Automate Employee Inquiry Form for Personal Data
    Given user navigated to Employee Inquiry Form
    Then user choose to enter Employee Number "<EmpNum>"
    Then user clicks on Personal Data and captures Screenshot

    Examples:
      |EmpNum|
      |10244 |

  @EmployeeInquiry
    @PATC94
  Scenario Outline: Automate Employee Inquiry Form for YtdAmounts
    Given user should open Employee Inquiry Form
    Then user should enter Employee Number "<EmpNum>"
    Then user clicks on YtdAmounts and captures Screenshot

    Examples:
      |EmpNum|
      |10244 |

  @EmployeeInquiry
    @PATC95
  Scenario Outline: Automate Employee Inquiry Form for Ytd Check Summary
    Given user has to open Employee Inquiry Form
    Then user has to enter Employee Number "<EmpNum>"
    Then user clicks on Ytd Check Summary and captures Screenshot

    Examples:
      |EmpNum|
      |10244 |

