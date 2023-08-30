#Author :Abhinandan Mannurkar

Feature: T4 Tape File Creation Form

  @T4FileCreation
  @PATC106
  Scenario Outline: Automate T4 File Creation Form
    Given user opens CDN Tape File Creation Form
    Then user enters the Tax year "<Year>"
    Then user enters the Transmitter ID "<TransmitterID>" only option
    Then user enters emailaddress "<Emailaddress>"
    Then user enters EmployerID "<EmployerID>"
    Then user enters Filename "<Filename>"
    Then user enters Library "<Library>"
    Then user enters Volume "<Volume>"
    Then user clicks on CreateXMLFile

  Examples:
    |Year|TransmitterID|Emailaddress|EmployerID|Filename|Library|Volume|
    |2019|67800012     |amannurkar@cayenta.com|678000123|T4201903|PA|FINDAT|