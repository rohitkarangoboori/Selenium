#Author :Abhinandan Mannurkar
Feature: Purchase Order Form -POEntry Options

  @POEntry01
  Scenario Outline: Automate Purchase Order Form with Emergency PO Option
    Given User opens Purchase Order Form and accepts to add new PO Entry
    Then user enter POSubject "<Subject>"
    Then user has to enter POSupplier "<Supplier>"
    Then user has to enter PODescription "<Description>"
    Then user enters POQuantity "<Quantity>" POItem "<Item>" and POPrice "<Price>"
    Then user clicks to Add row in PO Form
    Then user enters POPosting "<Posting>" and POChargeCD "<ChargeCD>"
    Then user clicks on to Save the form
    Then user should click edit list and approval to create report

    Examples: 
      | Subject              | Supplier | Description | Quantity | Item | Price | Posting | ChargeCD |
      | TestPOEmergencyEntry |    10000 | Test Item1  |       10 | EA   |     1 |     100 |     1131 |

  @POEntry02
  Scenario Outline: Automate Purchase Order Form with PO Adjustment Option
    Given User opens Purchase Order Form and accepts to perform new PO Adjustment Entry
    Then user should enter PO number and retrieve
    Then user should change the Quantity "<Quantity>"
    Then user should click to Save and submit form
    Then user should click on edit list and approval to create report.

    Examples: 
      | Quantity |
      |       20 |

  @POEntry03
  Scenario Outline: Automate Purchase Requisition Form with Regular Requisition to PO
    Given User navigates to Purchase Requisition Form and accepts to add new PR Entry
    Then user enters Subject "<Subject>"
    Then user enters RequestBy "<RequestBy>"
    Then user enters Buyer "<Buyer>"
    Then user deselects AuotPO and HeaderGL
    Then user enters Description "<Description>"
    Then user to enter Quantity "<Quantity>" Item "<Item>" and Price "<Price>"
    Then user adds tax "<Tax1>"
    Then user clicked on Add row
    Then user to enter Posting "<Posting>" and ChargeCD "<ChargeCD>"
    Then user clicks on Add New Record Line
    Then user has to enter Quantity "<Quantity>" Item "<Item2>" Price "<Price>" Description"<Desc>" Tax"<Tax1>" Posting "<Posting>"and ChargeCD "<ChargeCD>"
    Then user has to click to Save the form
    Then user clicks on Edit and Approval

    Examples: 
      | Subject     | RequestBy | Buyer | Description | Quantity | Item | Price | Posting | ChargeCD | Tax1 | Item2 | Desc  |
      | TestPREntry |       321 | ITB   | Item1       |       10 | EA   |     1 |     100 |     1131 | GST  | EA    | Item2 |

  @POEntry04
  Scenario Outline: Automate Purchase Order Form with PR Option
    Given User navigates to Purchase Order Form and accepts to add new PO Entry
    Then user enters PR prefix and number
    Then user has to click on Take PR option
    Then user has to enter Supplier number "<Supplier>"
    Then user has to click on to Save the form
    Then user has to click edit list and approval to create report

    Examples: 
      | Supplier |
      |    10000 |

  @POEntry05
  Scenario Outline: Automate Purchase Requisition Form with Regular Requisition By Supplier and Commodity
    Given user navigates to Purchase Requisition Form and accepts to add new PR Entry
    Then user has to enter Subject "<Subject>"
    Then user have to enter RequestBy "<RequestBy>"
    Then user have to enter Buyer "<Buyer>"
    Then user have to deselects AuotPO and HeaderGL
    Then user have to enter Description "<Description>"
    Then user have to enter Quantity "<Quantity>" Item "<Item>" and Price "<Price>"
    Then user has to add tax "<Tax1>"
    Then user has clicked on Add row
    Then user has to enter Posting "<Posting>" and ChargeCD "<ChargeCD>"
    Then user has to click on Add New Record Line
    Then user enters Quantity "<Quantity>" Item "<Item2>" Price "<Price>" Description"<Desc>" Tax"<Tax1>" Posting "<Posting>"and ChargeCD "<ChargeCD>"
    Then user has to enter click to Save the form
    Then user has to click on Edit and Approval

    Examples: 
      | Subject     | RequestBy | Buyer | Description | Quantity | Item | Price | Posting | ChargeCD | Tax1 | Item2 | Desc      |
      | TestPREntry |       321 | ITB   | Item1       |       10 | EA   |     1 |     100 |     1131 | GST  | EA    | newrecord |

  @POEntry06
  Scenario Outline: Automate Purchase Order Form with PR By Supplier Option
    Given user navigates to Purchase Order Form and accepts to add new PO Entry
    Then user clicks on By Sup
    Then user has to enter Requisition number and select line
    Then user has to accept
    Then user adds new record and accepts
    Then user has to pass Supplier number "<Supplier>"
    Then user click on to Save the form

    Examples: 
      | Supplier |
      |    10000 |

  @POEntry07
  Scenario Outline: Automate Purchase Order Form with PR By Commodity Option
    Given user navigated to Purchase Order Form and accepts to add new PO Entry
    Then user clicks on By Commodity
    Then user choose to enter Requisition number and select line
    Then user has to click on accept
    Then user has to pass Commodity number "<Commodity>"
    Then user has to pass Supplier "<Supplier>"
    Then user has to Save the form
    Then user choose to click on Edit and Approval

    Examples: 
      | Commodity | Supplier |
      |    001000 |    10000 |

  @POEntry08
  Scenario: Automate Purchase Order Form with PO Adjustment Option to CancelPO
    Given user opens Purchase Order Form and accepts to perform new PO Adjustment Entry
    Then user should enter PO Prefix and Number
    Then user should retrieve PO information
    Then user should click on CancelPO

  @POEntry09
  Scenario: Automate Purchase Order Form with PO Adjustment Option to DeletePO
    Given user navigates Purchase Order Form and accepts to perform new PO Adjustment Entry
    Then user should enter PO prefix and number
    Then user should retrieve previous PO information
    Then user should click on Delete

  @POEntry10
  Scenario: Automate Purchase Order Form with PO Adjustment Option to CancelPOPR
    Given user navigated Purchase Order Form and accepts to perform new PO Adjustment Entry
    Then user has to enter PO Prefix and Number
    Then user has to retrieve PO number
    Then user should click on CancelPOPR

  @POEntry11
  Scenario: Automate Purchase Order Form with PO Adjustment Option to CancelPOPR Line
    Given user should navigate to Purchase Order Form and accepts to perform new PO Adjustment Entry
    Then user should retrieve PO Prefix and Number
    Then user should retrieve PO number
    Then user should click on CancelPOPRLine

  @POEntry12
  Scenario Outline: Automate Purchase Requisition Form with Regular Requisition By Supplier and Commodity
    Given user navigates to Purchase Requisition Form and accepts to add new PR Entry
    Then user has to enter Subject "<Subject>"
    Then user have to enter RequestBy "<RequestBy>"
    Then user have to enter Buyer "<Buyer>"
    Then user have to deselects AuotPO and HeaderGL
    Then user have to enter Description "<Description>"
    Then user have to enter Quantity "<Quantity>" Item "<Item>" and Price "<Price>"
    Then user has to add tax "<Tax1>"
    Then user has clicked on Add row
    Then user has to enter Posting "<Posting>" and ChargeCD "<ChargeCD>"
    Then user has to click on Add New Record Line
    Then user enters Quantity "<Quantity>" Item "<Item2>" Price "<Price>" Description"<Desc>" Tax"<Tax1>" Posting "<Posting>"and ChargeCD "<ChargeCD>"
    Then user has to enter click to Save the form
    Then user has to click on Edit and Approval

    Examples: 
      | Subject     | RequestBy | Buyer | Description | Quantity | Item | Price | Posting | ChargeCD | Tax1 | Item2 | Desc      |
      | TestPREntry |       321 | ITB   | Item1       |       10 | EA   |     1 |     100 |     1131 | GST  | EA    | newrecord |

  @POEntry14
  Scenario Outline: Automate Purchase Order Form with PR By Commodity Option
    Given user navigated to Purchase Order Form and accepts to add new PO Entry
    Then user clicks on By Commodity
    Then user choose to enter Requisition number and select line
    Then user has to click on accept
    Then user has to pass Commodity number "<Commodity>"
    Then user has to pass Supplier "<Supplier>"
    Then user has to Save the form
    Then user choose to click on Edit and Approval

    Examples: 
      | Commodity | Supplier |
      |    001000 |    10000 |

  @POEntry15
  Scenario Outline: Automate Purchase Order Form with PO Adjustment to add new record
    Given user passes URL to Purchase Order Form and accepts to perform new PO Adjustment Entry
    Then user shall retrieve PO Prefix and Number
    Then user shall retrieve PO information
    Then user shall click on Add New Record Line
    Then user shall enter Quantity "<Quantity>" Item "<Item>" Price "<Price>" Description"<Desc>" Tax"<Tax1>" Posting "<Posting>"and ChargeCD "<ChargeCD>"
    Then user shall Save to changes

    Examples: 
      | Desc      | Quantity | Item | Price | Posting | ChargeCD | Tax1 |
      | addrecord |       15 | EA   |     2 |     100 |     1132 | GST  |

  @POEntry16
  Scenario Outline: Automate Purchase Order Form with PO Adjustment to modify new record
    Given user has to pass URL to Purchase Order Form and accepts to perform new PO Adjustment Entry
    Then user must retrieve PO Prefix and Number
    Then user must retrieve PO information
    Then user shall modify Description "<Desc>"
    Then user shall click Save to changes

    Examples: 
      | Desc         |
      | modifyrecord |

  @POEntry17
  Scenario: Automate Purchase Order Form with PO Adjustment to delete record
    Given user to pass URL to Purchase Order Form and accepts to perform new PO Adjustment Entry
    Then user to retrieve PO Prefix and Number
    Then user to retrieve PO information
    Then user shall delete the record
    Then user to click Save to changes

  @POEntry18
  Scenario: Automate Purchase Order Form with PO Adjustment Option to CancelPO Line
    Given user goes to Purchase Order Form and accepts to perform new PO Adjustment Entry
    Then user has to retrieve PO Prefix and Number
    Then user has to retrieve PO information
    Then user should click on CancelPOLine

  @POEntry19
  Scenario Outline: Automate Purchase Order form with PO Blanket option
    Given user has to navigate to Purchase Order Form and choose PO Type option
    Then user enters PO amount "<POAmount>"
    Then user enters Subject to create blanket PO "<Subject>"
    Then user enters Supplier number "<Supplier>"
    Then user has to Save the form info

    Examples: 
      | POAmount | Subject    | Supplier |
      |      100 | Blanket PO |    10000 |

  @POEntry20
  Scenario Outline: Automate Purchase Order form with PO Blanket option with creating line
    Given user navigates to Purchase Order Form and choose PO Type option
    Then user has to enter Subject to create blanket PO "<Subject>"
    Then user should enter Supplier number "<Supplier>"
    Then user should enter line Description "<Desc>"
    Then user enters Quantity "<Quantity>"
    Then user specifies Unit "<Unit>"
    Then user specifies Price "<Price>" and Tax "<Tax>"
    Then user has to Add row with Posting code "<Posting>" and ChargeCD "<ChargeCD>"
    Then user should Save the form info

    Examples: 
      | Subject    | Supplier | Desc           | Quantity | Unit | Price | Tax | Posting | ChargeCD |
      | Blanket PO |    10000 | BlanketPO line |       15 | EA   |    10 | GST |     100 |     1132 |

  @POEntry21
  Scenario Outline: Automate Purchase Order form with PO Parent Blanket option
    Given user navigate to Purchase Order Form and choose PO Type option
    Then user has to enter Subject to create parent blanket PO "<Subject>"
    Then user should pass Supplier number "<Supplier>"
    Then user should pass line Description "<Desc>"
    Then user should pass Quantity "<Quantity>"
    Then user should pass Unit "<Unit>"
    Then user should pass Price "<Price>" and Tax "<Tax>"
    Then user should Save the form
    Then user edit and approve the Parent Blanket PO

    Examples: 
      | Subject           | Supplier | Desc                  | Quantity | Unit | Price | Tax |
      | Parent Blanket PO |    10000 | Parent BlanketPO line |       10 | EA   |     5 | GST |

  @POEntry22
  Scenario Outline: Automate Purchase Order form with PO Blanket option for BlanketPO Requisition
    Given User has to navigate to Purchase Order Form and choose PO Type option
    Then User enters PO Amount "<POAmount>"
    Then User enters Subject to create blanket PO "<Subject>"
    Then User enters Supplier number "<Supplier>"
    Then User has to Save the form info
    Then User has to Edit and Approve the PO

    Examples: 
      | POAmount | Subject    | Supplier |
      |      100 | Blanket PO |    10000 |

  @POEntry23
  Scenario Outline: Automate Purchase Order form with PO Blanket option for BlanketPO Requisition line
    Given User navigates to Purchase Order Form and choose PO Type option
    Then User has to enter Subject to create blanket PO "<Subject>"
    Then User should enter Supplier number "<Supplier>"
    Then User should enter line Description "<Desc>"
    Then User enters Quantity "<Quantity>"
    Then User specifies Unit "<Unit>"
    Then User specifies Price "<Price>" and Tax "<Tax>"
    Then User has to Add row with Posting code "<Posting>" and ChargeCD "<ChargeCD>"
    Then User should Save the form info
    Then User has to click on Edit and Approve the PO

    Examples: 
      | Subject    | Supplier | Desc           | Quantity | Unit | Price | Tax | Posting | ChargeCD |
      | Blanket PO |    10000 | BlanketPO line |       15 | EA   |     1 | GST |     100 |     1132 |

  @POEntry24
  Scenario Outline: Automate Purchase Order form with retrieved PO Blanket option Regular without line
    Given User navigates to Purchase Order Form and choose PO Type Blanket option
    Then User has to retrieve Blanket PO prefix and number
    Then User should enter Supplier no "<Supplier>"
    Then User should enter Description "<Desc>"
    Then User should enter Quantity "<Quantity>"
    Then User should enter Unit "<Unit>"
    Then User should enter Price "<Price>" and Tax "<Tax>"
    Then User should enter Add row with Posting code "<Posting>" and ChargeCD "<ChargeCD>"
    Then User should Save the form

    Examples: 
      | Supplier | Desc                | Quantity | Unit | Price | Tax | Posting | ChargeCD |
      |    10000 | Add BlanketPO lines |        5 | EA   |     1 | GST |     100 |     1132 |

  @POEntry25
  Scenario Outline: Automate Purchase Order form with retrieved PO Blanket option Regular with line
    Given user navigates to Purchase Order Form and choose PO Type Blanket option
    Then user has to retrieve Blanket PO prefix and number
    Then user should enter Supplier no "<Supplier>"
    Then user should enter Description for blanket lines "<Desc>"
    Then user should enter Quantity "<Quantity>"
    Then user should enter Unit "<Unit>"
    Then user should enter Price "<Price>" and Tax "<Tax>"
    Then user should enter Add row with Posting code "<Posting>" and ChargeCD "<ChargeCD>"
    Then user should Save the Blanket PO form

    Examples: 
      | Supplier | Desc                | Quantity | Unit | Price | Tax | Posting | ChargeCD |
      |    10000 | Add BlanketPO lines |       10 | EA   |     1 | GST |     100 |     1132 |

  @POEntry26
  Scenario Outline: Automate Purchase Order form with retrieved Bid number
    Given user navigates to Purchase Order Form and choose Bid option
    Then user has to retrieve Bid prefix and number
    Then user to click Add Line and enter Description "<Desc>" Quantity"<Quantity>" Unit "<Unit>" Price "<Price>" and Tax "<Tax>"
    Then user should click Add row with Posting code "<Posting>" and ChargeCD "<ChargeCD>"
    Then user should Save the Bid PO form

    Examples: 
      | Desc                | Quantity | Unit | Price | Tax | Posting | ChargeCD |
      | Add BlanketPO lines |        1 | EA   |   0.1 | GST |     100 |     1132 |

  @POEntry27
  Scenario Outline: Automate Purchase Order form with Bid number by Supplier
    Given user navigates to Purchase Order Form and choose Bid option with Regular
    Then user has to retrieve last Bid prefix and number
    Then user needs to click By Supplier and accept
    Then user should click Add row with Posting code "<Posting>" and ChargeCD "<ChargeCD>" for distribution code
    Then user should Save the Bid PO form by Supplier

    Examples: 
      | Posting | ChargeCD |
      |     100 |     1132 |

  @POEntry28
  Scenario Outline: Automate Purchase Order form with retrieved Blanket Bid number
    Given user navigates to Purchase Order Form and choose Bid Blanket option
    Then user has to retrieve Bid Blanket prefix and number
    Then user to click Add Record Line and enter Description "<Desc>" Quantity"<Quantity>" Unit "<Unit>" Price "<Price>" and Tax "<Tax>"
    Then user has to click Add row with Posting code "<Posting>" and ChargeCD "<ChargeCD>"
    Then user has to Save the Bid Blanket PO form

    Examples: 
      | Desc                | Quantity | Unit | Price | Tax | Posting | ChargeCD |
      | Add BlanketPO lines |        1 | EA   |   0.1 | GST |     100 |     1132 |

  @POEntry31
  Scenario Outline: Automate Purchase Order form to create new Bid
    Given user navigates to Purchase Order Form and choose Bid Form option
    Then user has to enter Subject line "<Subject>"
    Then user has to enter Supplier no "<Supplier>"
    Then user has to check HeaderGL option
    Then user has to enter Description for bid lines "<Desc>"
    Then user has to enter Quantity "<Quantity>"
    Then user has to enter Unit "<Unit>"
    Then user has to enter Price "<Price>" and Tax "<Tax>"
    Then user has to enter Add row with Posting code "<Posting>" and ChargeCD "<ChargeCD>"
    Then user has to Save the Bid PO form
    Then user has to Edit and Approve PO form

    Examples: 
      | Subject      | Supplier | Desc             | Quantity | Unit | Price | Tax | Posting | ChargeCD | Percentage |
      | Test new Bid |    10000 | Add Bid PO lines |       10 | EA   |     1 | GST |     100 |     1132 |         50 |

  @POEntry32
  Scenario Outline: Automate Purchase Order form to create new Blanket Bid with Line
    Given user navigates to Purchase Order Form and choose Bid Blanket Form option
    Then user has to enter blanket Subject line "<Subject>"
    Then user has to chose Supplier number "<Supplier>"
    Then user has to select HeaderGL option
    Then user has to enter Description for blanket bid lines "<Desc>"
    Then user has to specify Quantity "<Quantity>"
    Then user has to specify Unit "<Unit>"
    Then user has to specify Price "<Price>" and Tax "<Tax>"
    Then user has to click on Add row with Posting code "<Posting>" and ChargeCD "<ChargeCD>"
    Then user has to Save the Blanket Bid PO form
    Then user clicks to Edit and Approve the form

    Examples: 
      | Subject              | Supplier | Desc                 | Quantity | Unit | Price | Tax | Posting | ChargeCD |
      | Test new Blanket Bid |    10000 | Add Blanket PO lines |       10 | EA   |     1 | GST |     100 |     1132 |

  @POEntry33
  Scenario Outline: Automate Purchase Order form with PO Bid option for BlanketPO without Line
    Given user has to navigate to Purchase Order Form and choose PO Type Blanket option
    Then user enters PO Amount "<POAmount>"
    Then user enters Subject to create blanket bid PO "<Subject>"
    Then user chooses Supplier number "<Supplier>"
    Then user has to click Save the form info
    Then user has to Edit and Approve the PO

    Examples: 
      | POAmount | Subject        | Supplier |
      |      100 | Bid Blanket PO |    10000 |

  @POEntry34
  Scenario Outline: Automate Purchase Order form with retrieved Parent Blanket Bid number
    Given user navigates to Purchase Order Form and choose Parent Blanket option
    Then user has to retrieve Parent Blanket prefix and number
    Then user has to click Add Record Line and enter Description "<Desc>" Quantity"<Quantity>" Unit "<Unit>" Price "<Price>" and Tax "<Tax>"
    Then user has to Save the Parent Blanket PO form

    Examples: 
      | Desc                   | Quantity | Unit | Price | Tax |
      | Parent BlanketPO lines |        1 | EA   |   0.1 | GST |

  @POEntry35
  Scenario Outline: Automate Purchase Order form to create new Parent Blanket Bid
    Given user navigates to Purchase Order Form and choose Bid Parent Blanket Form option
    Then user has to enter parent blanket Subject line "<Subject>"
    Then user has to choose Supplier number "<Supplier>"
    Then user has to enter Description for parent blanket bid lines "<Desc>"
    Then user has to send some Quantity "<Quantity>"
    Then user has to select Unit "<Unit>"
    Then user has to send some Price "<Price>" and Tax "<Tax>"
    Then user has to Save the Parent Blanket Bid PO form
    Then user has to click to Edit and Approve the form

    Examples: 
      | Subject                     | Supplier | Desc                       | Quantity | Unit | Price | Tax |
      | Test new Parent Blanket Bid |    10000 | Add ParentBlanket PO lines |       10 | EA   |     1 | NON |

  @POEntry36
  Scenario Outline: Automate Purchase Order form with Standing PO Regular
    Given user navigates to Purchase Order Form and choose Standing PO  option
    Then user has to select Supplier number "<Supplier>"
    Then user has to click on Save Standing PO information
    Then user has to Edit and Approve Standing PO

    Examples: 
      | Supplier |
      |    10001 |

  @POEntry37
  Scenario Outline: Automate Purchase Order form to create new Standing PO Regular with Line
    Given user navigates to Purchase Order Form and choose Standing PO Regular Form option
    Then user shall choose Supplier number "<Supplier>"
    Then user shall enter Description for standing PO lines "<Desc>"
    Then user shall specify Quantity "<Quantity>"
    Then user shall specify Unit "<Unit>"
    Then user shall specify Price "<Price>" and Tax "<Tax>"
    Then user shall click on Add row with Posting code "<Posting>" and ChargeCD "<ChargeCD>"
    Then user has to Save the Standing PO form
    Then user shall click on Edit and Approve the form

    Examples: 
      | Supplier | Desc                  | Quantity | Unit | Price | Tax | Posting | ChargeCD |
      |    10000 | Add Standing PO lines |       10 | EA   |     1 | GST |     100 |     1132 |

  @POEntry38
  Scenario Outline: Automate Purchase Order Form with Standing PO Adjustment to add new record
    Given user passes URL to Purchase Order Form and modifies to perform new PO Adjustment Entry
    Then user should retrieve previous PO Prefix and Number
    Then user should retrieve Standing PO information
    Then user should click on Add New Record Line
    Then user should enter Quantity "<Quantity>" Item "<Item>" Price "<Price>" Description"<Desc>" Tax"<Tax1>" Posting "<Posting>"and ChargeCD "<ChargeCD>"
    Then user should Save to changes

    Examples: 
      | Desc      | Quantity | Item | Price | Posting | ChargeCD | Tax1 |
      | addrecord |       10 | EA   |    10 |     100 |     1132 | GST  |

  @POEntry39
  Scenario Outline: Automate Purchase Order Form with Standing PO Regular Adjustment with line
    Given user shall pass URL to Purchase Order Form and modifies to perform new PO Adjustment Entry
    Then user shall retrieve previous PO Prefix and Number
    Then user shall retrieve Standing PO information
    Then user shall click to Add New Record Line
    Then user shall pass Quantity "<Quantity>" Item "<Item>" Price "<Price>" Description"<Desc>" Tax"<Tax1>" Posting "<Posting>"and ChargeCD "<ChargeCD>"
    Then user shall Save to changes to Standing PO Adjustment Entry

    Examples: 
      | Desc                | Quantity | Item | Price | Posting | ChargeCD | Tax1 |
      | add standing record |       10 | EA   |     1 |     100 |     1132 | GST  |

  @POEntry40
  Scenario Outline: Automate Purchase Order form with PO Blanket option to adjust BlanketPO Requisition
    Given User has to navigate to Purchase Order Form and choose BlanketPO
    Then user has to click on adjustment option
    Then user clicks to retrieve previous Blanket PO
    Then User has to modify PO Amount "<POAmount>"
    Then User has to click on Save to update the form

    Examples: 
      | POAmount |
      |      200 |

  @POEntry41
  Scenario Outline: Automate Purchase Order form with PO Blanket option to adjust BlanketPO Requisition line
    Given User navigates to Purchase Order Form and choose PO Type option
    Then User has to enter Subject to create blanket PO "<Subject>"
    Then User should enter Supplier number "<Supplier>"
    Then User should enter line Description "<Desc>"
    Then User enters Quantity "<Quantity>"
    Then User specifies Unit "<Unit>"
    Then User specifies Price "<Price>" and Tax "<Tax>"
    Then User has to Add row with Posting code "<Posting>" and ChargeCD "<ChargeCD>"
    Then User should Save the form info
    Then User has to click on Edit and Approve the PO
    Given user shall navigate to Purchase Order Form and choose PO Type Blanket option
    Then user shall click on adjustment option
    Then user shall click to retrieve previous Blanket PO
    Then user shall adjust Description "<Desc1>"
    Then user shall Save the form info

    Examples: 
      | Subject    | Supplier | Desc           | Quantity | Unit | Price | Tax | Posting | ChargeCD | Desc1    |
      | Blanket PO |    10000 | BlanketPO line |       15 | EA   |     1 | GST |     100 |     1132 | adjusted |

  @POEntry42
  Scenario Outline: Automate Purchase Order form with PO Parent Blanket option with Adjustment
    Given user navigate to Purchase Order Form and choose PO Type option
    Then user has to enter Subject to create parent blanket PO "<Subject>"
    Then user should pass Supplier number "<Supplier>"
    Then user should pass line Description "<Desc>"
    Then user should pass Quantity "<Quantity>"
    Then user should pass Unit "<Unit>"
    Then user should pass Price "<Price>" and Tax "<Tax>"
    Then user should Save the form
    Then user edit and approve the Parent Blanket PO
    Given user shall navigate to Purchase Order Form and choose PO Type Parent Blanket option
    Then user should click on adjustment option
    Then user should click to retrieve previous Blanket PO
    Then user should adjust Quantity "<Qty>"
    Then user should Save the Parent Blanket form

    Examples: 
      | Subject           | Supplier | Desc                  | Quantity | Unit | Price | Tax | Qty |
      | Parent Blanket PO |    10000 | Parent BlanketPO line |       10 | EA   |     5 | GST |  20 |

  @POEntry43
  Scenario Outline: Automate Purchase Order form with PO Blanket option to perform Adjustment
    Given user shall navigate to Purchase Order Form and choose PO Blanket option with Regular Option
    Then user should check adjustment option
    Then user should be able to retrieve previous Blanket PO
    Then user should be able to adjust Tax "<Tax>"
    Then user should Save the adjusted Blanket PO form

    Examples: 
      | Tax |
      | NON |

  @POEntry44
  Scenario Outline: Automate Purchase Order Edit form to pass PO number with Requisition
    Given user navigated to Purchase Order Form and choose PO Type option
    Then user has to enter Subject to create Regular PO "<Subject>"
    Then user shall enter Supplier number "<Supplier>"
    Then user shall enter line Description "<Desc>"
    Then user shall enter Quantity "<Quantity>"
    Then user shall enter Unit "<Unit>"
    Then user shall enter Price "<Price>" and Tax "<Tax>"
    Then user shall Add row with Posting code "<Posting>" and ChargeCD "<ChargeCD>"
    Then user shall Save the Requisition regular form info
    Given user navigates to Purchase Order Edit Form with Requisition and Regular PO Type
    Then user has to retrieve PO number from previous requisition
    Then user has to click  Edit List to generate report

    Examples: 
      | Subject        | Supplier | Desc           | Quantity | Unit | Price | Tax | Posting | ChargeCD |
      | Requisition PO |    10000 | RegularPO line |       15 | EA   |    10 | GST |     100 |     1132 |

  @POEntry45
  Scenario Outline: Automate Purchase Order Edit form to pass PO number with Requisition by Operator
    Given user navigated to Purchase Order Form and choose PO Type option
    Then user has to enter Subject to create Regular PO "<Subject>"
    Then user shall enter Supplier number "<Supplier>"
    Then user shall enter line Description "<Desc>"
    Then user shall enter Quantity "<Quantity>"
    Then user shall enter Unit "<Unit>"
    Then user shall enter Price "<Price>" and Tax "<Tax>"
    Then user shall Add row with Posting code "<Posting>" and ChargeCD "<ChargeCD>"
    Then user shall Save the Requisition regular form info
    Given user navigates to Purchase Order Edit Form with Requisition and Regular to edit by Operator
    Then user has to retrieve PO number from previous requisition with regular
    Then user has to pass Operator to and from
    Then user has to click  on Edit List to generate report by operator

    Examples: 
      | Subject        | Supplier | Desc           | Quantity | Unit | Price | Tax | Posting | ChargeCD |
      | Requisition PO |    10000 | RegularPO line |       15 | EA   |    10 | GST |     100 |     1132 |

  @POEntry46
  Scenario Outline: Automate Purchase Order Edit form to pass PO number with Requisition by Buyer
    Given user navigated to Purchase Order Form and choose PO Type option
    Then user has to enter Subject to create Regular PO "<Subject>"
    Then user shall enter Supplier number "<Supplier>"
    Then user shall enter line Description "<Desc>"
    Then user shall enter Quantity "<Quantity>"
    Then user shall enter Unit "<Unit>"
    Then user shall enter Price "<Price>" and Tax "<Tax>"
    Then user shall Add row with Posting code "<Posting>" and ChargeCD "<ChargeCD>"
    Then user shall Save the Requisition regular form info
    Given user navigates to Purchase Order Edit Form with Requisition and Regular to edit by Buyer
    Then user has to retrieve PO number from previous requisition with regular POType
    Then user has to pass Buyer to and from
    Then user has to click  on Edit List to generate report by Buyer

    Examples: 
      | Subject        | Supplier | Desc           | Quantity | Unit | Price | Tax | Posting | ChargeCD |
      | Requisition PO |    10000 | RegularPO line |       15 | EA   |    10 | GST |     100 |     1132 |

  @POEntry47
  Scenario Outline: Automate Purchase Order Edit form to pass PO number with Requisition by PODate
    Given user navigated to Purchase Order Form and choose PO Type option
    Then user has to enter Subject to create Regular PO "<Subject>"
    Then user shall enter Supplier number "<Supplier>"
    Then user shall enter line Description "<Desc>"
    Then user shall enter Quantity "<Quantity>"
    Then user shall enter Unit "<Unit>"
    Then user shall enter Price "<Price>" and Tax "<Tax>"
    Then user shall Add row with Posting code "<Posting>" and ChargeCD "<ChargeCD>"
    Then user shall Save the Requisition regular form info
    Given user navigates to Purchase Order Edit Form with Requisition and Regular to edit by PODate
    Then user has to retrieve PO number from previous requisition with regular POType option
    Then user has to pass PODate
    Then user has to click  on Edit List to generate report by PODate

    Examples: 
      | Subject        | Supplier | Desc           | Quantity | Unit | Price | Tax | Posting | ChargeCD |
      | Requisition PO |    10000 | RegularPO line |       15 | EA   |    10 | GST |     100 |     1132 |
