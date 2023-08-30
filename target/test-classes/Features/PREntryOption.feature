#Author :Abhinandan Mannurkar

Feature: Purchase Requisition Form -PREntry Option
  @PREntry01

  Scenario Outline: Automate Purchase Requisition Form with PR Entry Option
    Given User opens Purchase Requisition Form and accepts to add new PR Entry
    Then user enter Subject "<Subject>"
    Then user has to enter RequestBy "<RequestBy>"
    Then user has to enter Buyer "<Buyer>"
    Then user has to enter Supplier "<Supplier>"
    Then user has to enter Description "<Description>"
    Then user enters Quantity "<Quantity>" Item "<Item>" and Price "<Price>"
    Then user clicks to Add row
    Then user enters Posting "<Posting>" and ChargeCD "<ChargeCD>"
  #  Then user enters MLA Template "<MLATemplate>" and MLAUser "<MLAUser>"
    Then user clicks to Save the form
    Then user clicks on edit and approve PR Entry


    Examples:
      |Subject|RequestBy|Buyer|Supplier|Description|Quantity|Item|Price|Posting|ChargeCD|MLATemplate|MLAUser|
      |TestPREntry|AF1          |ITB          |10000|Test Item1|10|EA|1|100|1131   |PO301      |sfg          |

  @PREntry02
  Scenario Outline: Automate Purchase Requisition Form with Quick PR Entry Option
    Given User opens Purchase Requisition Form and accepts to add new Quick PR Entry
    Then user should enter Subject "<Subject>"
    Then user should enter RequestBy "<RequestBy>"
    Then user should enter Supplier "<Supplier>"
    Then user should enter Description "<Description>"
    Then user should enter Quantity "<Quantity>" Item "<Item>" and Price "<Price>"
    Then user clicks on Add row
    Then user should enter Posting "<Posting>" and ChargeCD "<ChargeCD>"
  #  Then user should enter MLA Template "<MLATemplate>" and MLAUser "<MLAUser>"
    Then user has to click on Save


    Examples:
      |Subject|RequestBy|Supplier|Description|Quantity|Item|Price|Posting|ChargeCD|MLATemplate|MLAUser|
      |TestQuickPREntry|AF1          |10000|Test Item2|10|EA|1|100|1131   |PO301      |sfg          |


  @PREntry03
  Scenario Outline: Automate Purchase Requisition Form with PR Adjustment Option
    Given User opens Purchase Requisition Form and accepts to perform new PR Adjustment Entry
    Then user should enter Requisition number and retrieve
    Then user should change Quantity "<Quantity>"
    Then user should click Save to submit form
    Then user should click edit list and approval to create report.

    Examples:
    |Quantity|
    |20      |

  @PREntry04
  Scenario Outline: Automate Purchase Requisition Form with PR Entry Option to edit for single entry
    Given user opens Purchase Requisition Form and accepts to add new Quick PR Entry
    Then user shall enter Subject "<Subject>"
    Then user shall enter RequestBy "<RequestBy>"
    Then user shall enter Supplier "<Supplier>"
    Then user shall enter Description "<Description>"
    Then user shall enter Quantity "<Quantity>" Item "<Item>" and Price "<Price>"
    Then user shall click on Add row
    Then user shall enter Posting "<Posting>" and ChargeCD "<ChargeCD>"
    Then user shall click on Save
    Given user opens Purchase Requisition Form and accepts to edit single entry
    Then user enters PR Prefix and PR Number
    Then user has to retrieve the PR information
    Then user click on Edit List to generate report

    Examples:
      |Subject|RequestBy|Supplier|Description|Quantity|Item|Price|Posting|ChargeCD|
      |TestPREntryEditList|AF1          |10000|Test Item2|10|EA|1|100|1131   |


    @PREntry05
    Scenario: Automate Purchase Requisition Form with PR Entry Option to edit for multiple entry
    Given user opens Purchase Requisition Form and accepts to edit multiple entry
    Then user enters PR Prefix and PR Number for To and From
    Then user has to retrieve the multiple PR information
    Then user should click on Edit List to generate report


  @PREntry07
    Scenario: Automate Purchase Requisition Form with PR Entry EditList to adjust for single entry
      Given user opens Purchase Requisition Editlist Form and accepts to adjust single entry
      Then user enters adjusted PR Prefix and PR Number
      Then user has to retrieve the adjusted PR information
      Then user click on Edit List to generate report adjusted entry option

  @PREntry08
  Scenario Outline: Automate Purchase Requisition Form with PR Entry Option for multiple adjustment
    Given user opens Purchase Requisition Form and accepts to add new PR Entry
    Then user choose to enter Subject "<Subject>"
    Then user choose to enter RequestBy "<RequestBy>"
    Then user choose to enter Buyer "<Buyer>"
    Then user choose to enter Supplier "<Supplier>"
    Then user choose to enter Description "<Description>"
    Then user choose to enter Quantity "<Quantity>" Item "<Item>" and Price "<Price>"
    Then user choose to click to Add row
    Then user choose to enter Posting "<Posting>" and ChargeCD "<ChargeCD>"
    Then user choose to click to Save the form
    Given User choose to open Purchase Requisition Form and accepts to perform new PR Adjustment Entry
    Then user choose to enter Requisition number and retrieve
    Then user choose to change Quantity "<Quantity>"
    Then user choose to click Save to submit form
    Then user choose to click edit list and approval to create report.

    Given user opens Purchase Requisition Editlist Form and accepts to adjust multiple entry
    Then user enters PR Prefix and PR Number for To and From info
    Then user has to retrieve the multiple adjusted PR information
    Then user should click on Edit List to generate adjustment report


    Examples:
      |Subject|RequestBy|Buyer|Supplier|Description|Quantity|Item|Price|Posting|ChargeCD|
      |TestAdjustedPREntry|AF1          |ITB          |10000|Test Item1|10|EA|1|100|1131   |


  @PREntry09
  Scenario: Automate Purchase Requisition Form with PR Entry Option to approve for multiple entry
    Given user opens Purchase Requisition Form and accepts to approve multiple entry
    Then user should enter PR Prefix and PR Number for To and From
    Then user should retrieve the multiple PR information
    Then user should click on Approval to generate report


  @PREntry10
  Scenario: Automate Purchase Requisition Form with PR Entry Option to adjust approve for multiple entry
    Given user opens Purchase Requisition Editlist Form and accepts to adjust approval multiple entry
    Then user sends PR Prefix and PR Number for To and From info
    Then user to retrieve the multiple adjusted PR information
    Then user should click on Edit List to generate adjustment approval report
