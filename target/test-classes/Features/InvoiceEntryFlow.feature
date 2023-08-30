#Author:Abhinandan Mannurkar
Feature: Create new Invoice Entry

  #QAP-DE-001 & QAP-DE-002
  @Invoice
  @IETC1
  Scenario Outline: Automate Invoice Entry Form
    Given User passes URL
    Then User selects dropdown
    Then User enters Date
    Then User enter "<SupplierNo>"
    Then User enters Invoice
    Then User pass the "<Amount>" & "<Des>"
    Then User click on the add row and the enteres the "<Postingcode>" & "<Chargecd>"
    Then User clicks on Save
    Then User clicks on Edit list
    Then User clicks on Approve

    Examples: 
      | SupplierNo | Des         | Amount | Postingcode | Chargecd |
      |      00002 | AUTTest-Des |     10 |         100 |     1015 |

  #QAP-PR-001
  @Invoice
  @IETC2
  Scenario Outline: Individual Invoice selection form
    Given User enters the URL
    Then enter "<Fund>" & "<Sub Fund>"
    Then enter "<SupplierNumber>"
    Then pass invoice number from invoice entry
    Then click accept

    Examples: 
      | Fund | Sub Fund | SupplierNumber |
      |  000 |      000 |          00002 |


  #QAP-PR-002
  @Invoice
  @IETC3
  Scenario: Pre-Check Report Writing
    Given User entered the URL
    Then User clicks on Generate Report
    Then User clicks on Excel Report


    #QAP-PR-003
  @Invoice
  @IETC4
  Scenario: Run Check Print and Register
    Given User pass the URL
    Then click the accept
    Then enter check run date
    Then enters DD payment date
    Then click Process
