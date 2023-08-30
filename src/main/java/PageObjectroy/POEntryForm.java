package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class POEntryForm {

WebDriver driver;

public POEntryForm ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
	
}
	@FindBy (xpath = "//*[@mmf_name='MMF_WS_INPUT_FROM']") private WebElement InputForm;
	@FindBy(xpath = "//*[@mmf_name='MMF_A259_WS_DESCRIPTION_GROUP']") private WebElement Sub;
	@FindBy(xpath = "//*[@mmf_name='MMF_PO003M_VENDOR']") private WebElement Vendor;
	@FindBy(xpath = "//*[@mmf_name='MMF_A339_WS_DESCRIPTION_GROUP']") private WebElement Desc;
	@FindBy(xpath = "//*[@mmf_name='MMF_PO208W_QUANTITY']") private WebElement POQty;
	@FindBy(xpath = "//*[@mmf_name='MMF_PO208W_ORDER_UNITS']") private WebElement POUnits;
	@FindBy(xpath = "//*[@mmf_name='MMF_PO208W_NON_DISCOUNTED_PRICE']") private WebElement POPrice;
	@FindBy(xpath = "//*[@id='ext-gen18']") private WebElement POAddrow;
	@FindBy(xpath = "//*[@id='ext-comp-1001']") private WebElement POPostingCode;
	@FindBy(xpath = "//*[@id='ext-comp-1002']") private WebElement POChargeCode;
	@FindBy(xpath = "//*[@id='ext-comp-1004']") private WebElement Percentage;
	@FindBy(xpath = "//*[@mmf_name='MMF_11']") private WebElement Save;
	@FindBy(xpath = "//*[@id='ext-gen34']") private WebElement Edit;
	@FindBy(xpath = "//*[@id='ext-gen38']") private WebElement Approval;
	@FindBy(xpath = "//*[@mmf_name='MMF_A105_WS_PREFIX']") private WebElement POPrefix;
	@FindBy(xpath = "//*[@mmf_name='MMF_A108_WS_NUMBER']") private WebElement POnumber;
	@FindBy(xpath = "//*[@mmf_name='MMF_WS_ADJ_FLAG']") private WebElement Adjustment;
	@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement Retrieve;
	@FindBy(xpath = "//*[@mmf_name='MMF_PO208W_QUANTITY_OUTSTANDING']") private WebElement POQtyadjust;
	@FindBy(xpath = "//*[@id='ext-gen36']") private WebElement AdjustEdit;
	@FindBy(xpath = "//*[@id='ext-gen40']") private WebElement AdjustApproval;
	@FindBy(xpath = "//*[@id='ext-gen25']") private WebElement TakePR;
	@FindBy(xpath = "//*[@id='ext-gen27']") private WebElement BySup;
	@FindBy(xpath = "//*[@id='ext-gen30']") private WebElement ByCom;
	@FindBy(xpath = "//*[@mmf_name='MMF_SV002W_PR_NUMBER']") private WebElement Findnum;
	@FindBy(xpath = "//*[@mmf_name='MMF_SV002W_REQUISITION_LINE_NO']") private WebElement Findline;
	@FindBy(xpath = "//*[@id='GObutton']") private WebElement Gobutton;
	@FindBy(xpath = "//*[@mmf_name='MMF_A421_SCRN_SELECT']") private WebElement lineoption;
	@FindBy(xpath = "//*[@id='ext-gen74']") private WebElement Addrecord;
	@FindBy(xpath = "//*[@mmf_name='MMF_PO208W_COMMODITY']") private WebElement Commodity;
	@FindBy(xpath = "//*[@id='ext-gen28']") private WebElement CancelPO;
	@FindBy(xpath = "//*[@id='ext-gen26']") private WebElement CancelPRPO;
	@FindBy(xpath = "//*[@mmf_name='MMF_8']") private WebElement Delete;
	@FindBy(xpath = "//*[@id='ext-gen75']") private WebElement CancelPRPOLine;
	@FindBy(xpath = "//*[@id='ext-gen77']") private WebElement CancelPOLine;
	@FindBy(xpath = "//*[@id='ext-gen70']") private WebElement AddLine;
	@FindBy(xpath = "//*[@mmf_name='MMF_PO208W_TAX_CODE']") private WebElement Taxcode;
	@FindBy(xpath = "//*[@id='ext-gen87']") private WebElement Next;
	@FindBy(xpath = "//*[@mmf_name='MMF_WS_PO_TYPE']") private WebElement POtype;
	@FindBy(xpath = "//*[@mmf_name='MMF_1_BLANKET_AMOUNT']") private WebElement POAmount;
	@FindBy(xpath = "//*[@mmf_name='MMF_WS_BLANKET_PREFIX']") private WebElement BlanketPOPrefix;
	@FindBy(xpath = "//*[@mmf_name='MMF_BLKT_NUMBER_NBR']") private WebElement BlanketPOnumber;
	@FindBy(xpath = "//*[@class='x-grid3-cell-inner x-grid3-col-1']") private WebElement BidSearch;
	@FindBy(xpath = "//*[@id='LookUpField4Trigger']") private WebElement BidLookup;
	@FindBy(xpath = "//*[@mmf_name='MMF_PO208W_INVENTORY_LOCATION']") private WebElement Inventorylocation;
	@FindBy(xpath = "//*[@mmf_name='MMF_A291_WS_FLAGS_1']") private WebElement HeaderGL;
	@FindBy(xpath = "//*[@id='ext-gen52']") private WebElement Firstpage;
	@FindBy(xpath = "//*[@id='ext-gen60']") private WebElement Lastpage;
	@FindBy(xpath = "//*[@mmf_name='MMF_SV012W_BID_NUMBER']") private WebElement SupBidno1;
	@FindBy(xpath = "//*[@mmf_name='MMF_SV012W_BID_LINE_NO']") private WebElement SupBidno2;
	@FindBy(xpath = "//*[@mmf_name='MMF_WS_INPUT_FROM']") private WebElement POEditInputForm;
	@FindBy(xpath = "//*[@mmf_name='MMF_WS_PO_TYPE']") private WebElement POEditPOType;
	@FindBy(xpath = "//*[@id='ext-gen3']") private WebElement POEditList;


	public void clickEditList() throws InterruptedException {
	POEditList.click ();
	Thread.sleep ( 2000 );
	
}
	public WebElement setEditPOType(){
	return POEditPOType;
}
	
	public WebElement setEditInputForm(){
	return POEditInputForm;
}

	public void setSupBidno2() throws InterruptedException {
	Actions actions =new Actions ( driver );
	actions.doubleClick (SupBidno2).perform ();
	SupBidno2.sendKeys ( "0" );
	Thread.sleep ( 1000 );
	
}
	public void setSupBidno1() throws InterruptedException {
		Actions actions =new Actions ( driver );
		actions.doubleClick (SupBidno1).perform ();
		SupBidno1.sendKeys ( "660" );
		Thread.sleep ( 1000 );
		
	}
	
	public void clicklastpage() throws InterruptedException {
	Lastpage.click ();
	Thread.sleep ( 1000 );
}
	public void clickfirstpage() throws InterruptedException {
		Firstpage.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickHeaderGL() throws InterruptedException {
		HeaderGL.click ();
		Thread.sleep ( 1000 );
	}
	
	public void getInventoryLocation(String strinvloc) throws InterruptedException {
		Inventorylocation.click ();
		Thread.sleep ( 1000 );
		Inventorylocation.sendKeys ( strinvloc );
		Thread.sleep ( 2000 );
	}
	
	public void clickBidSearch() throws InterruptedException {
		Actions actions =new Actions ( driver );
		actions.doubleClick (BidSearch).perform ();
		Thread.sleep ( 2000 );
		
	}
	
	public void clickBidLookup() throws InterruptedException {
		BidLookup.click ();
		Thread.sleep ( 1000 );
	}
	
	public void setPOAmount(String strPOAmount) throws InterruptedException {
		POAmount.click ();
		Thread.sleep ( 1000 );
		Actions actions =new Actions ( driver );
		actions.doubleClick (POAmount).perform ();
		Thread.sleep ( 2000 );
		POAmount.sendKeys ( strPOAmount );
		Thread.sleep ( 1000 );
	}

	public WebElement setPOType(){
		return POtype;
	}
	
	public void clickNext() throws InterruptedException {
		Next.click ();
		Thread.sleep ( 1000 );
	}
	
	public void setTaxcode(String strTax) throws InterruptedException {
		Taxcode.click ();
		Thread.sleep ( 2000 );
		Taxcode.sendKeys ( strTax );
		Thread.sleep ( 1000 );
	}
	
	public void clickAddLine() throws InterruptedException {
		AddLine.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickCancelPRPOLine() throws InterruptedException {
	CancelPRPOLine.click ();
	Thread.sleep ( 1000 );
}

	public void clickCancelPOLine() throws InterruptedException {
	CancelPOLine.click ();
	Thread.sleep ( 1000 );
}


	public void clickDelete() throws InterruptedException {
		Delete.click ();
		Thread.sleep ( 1000 );
		
	}
	
	public void clickCancelPRPO() throws InterruptedException {
		CancelPRPO.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickCancelPO() throws InterruptedException {
		CancelPO.click ();
		Thread.sleep ( 1000 );
	}

	public void setCommodity (String strCommodity) throws InterruptedException {
		Commodity.click ();
		Thread.sleep ( 1000 );
		Commodity.sendKeys ( strCommodity );
		Thread.sleep ( 1000 );
	}
	
	public void clickAddrecord() throws InterruptedException {
		Addrecord.click ();
		Thread.sleep ( 1000 );
	}
	
	public WebElement setLineoption(){
	return lineoption;
	}
	
	public void clickGo() throws InterruptedException {
		Gobutton.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickByCom() throws InterruptedException {
		ByCom.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickBySup() throws InterruptedException {
	BySup.click ();
	Thread.sleep ( 1000 );
	}

	public void clickTakePR() throws InterruptedException {
	TakePR.click ();
	Thread.sleep ( 1000 );
	}

	public void clickAdjustApproval() throws InterruptedException {
	AdjustApproval.click ();
	Thread.sleep ( 1000 );
	}

	public void clickAdjustEdit() throws InterruptedException {
	AdjustEdit.click ();
	Thread.sleep ( 1000 );
	}


public void setadjustQty(String strQuantity) throws InterruptedException {
	
	Actions actions =new Actions ( driver );
	actions.doubleClick (POQtyadjust).perform ();
	POQtyadjust.sendKeys ( strQuantity );
	Thread.sleep ( 1000 );
}


public void clickRetrieve() throws InterruptedException {
	Retrieve.click ();
	Thread.sleep ( 1000 );
}


public void clickAdjustment() throws InterruptedException {
	Adjustment.click ();
	Thread.sleep ( 1000 );
}

public void clickApproval() throws InterruptedException {
	Approval.click ();
	Thread.sleep ( 1000 );
}

public void clickEdit() throws InterruptedException {
	Edit.click ();
	Thread.sleep ( 1000 );
}

public String getReqnumber(){
	return POnumber.getAttribute("value").trim ();
}

public String getReqPrefix(){
	return POPrefix.getAttribute("value").trim ();
}

public void clickSave() throws InterruptedException {
	Save.click ();
	Thread.sleep ( 1000 );
}

public void setDescription(String strDes) throws InterruptedException {
	Desc.click ();
	Thread.sleep ( 1000 );
	Desc.sendKeys ( strDes );
	Thread.sleep ( 1000 );
}

public void setQuantity(String strQuantity) throws InterruptedException {
	
	Actions actions =new Actions ( driver );
	actions.doubleClick (POQty).perform ();
	POQty.sendKeys ( strQuantity );
	Thread.sleep ( 1000 );
}


public void setUnits(String strUnit) throws InterruptedException {
	POUnits.click ();
	Thread.sleep ( 1000 );
	POUnits.sendKeys ( strUnit );
	Thread.sleep ( 1000 );
}

public void setPrice(String strPOPrice) throws InterruptedException {
	Actions actions =new Actions ( driver );
	actions.doubleClick (POPrice).perform ();
	POPrice.sendKeys ( strPOPrice );
	Thread.sleep ( 1000 );
	
}

public void clickAddRow(){
	POAddrow.click();
}

public void setPosting(String strPosting) throws InterruptedException {
	POPostingCode.click ();
	Thread.sleep ( 1000 );
	POPostingCode.click ();
	Thread.sleep ( 1000 );
	
	POPostingCode.sendKeys ( strPosting );
	Thread.sleep ( 1000 );
}

public void setChargeCD(String strChargeCD) throws InterruptedException {
	POChargeCode.click ();
	Thread.sleep ( 1000 );
	POChargeCode.sendKeys ( strChargeCD );
	Thread.sleep ( 1000 );
}
public void setPercentage(String strPercentage) throws InterruptedException {
	//Actions actions =new Actions ( driver );
	//actions.doubleClick (Percentage).perform ();
	Percentage.click ();
	Thread.sleep ( 1000 );
	Percentage.click ();
	Thread.sleep ( 1000 );
	Percentage.sendKeys ( strPercentage );
	Thread.sleep ( 1000 );
}

public void setVendor(String strVendor) throws InterruptedException {
	Vendor.click ();
	Thread.sleep ( 1000 );
	Vendor.sendKeys ( strVendor );
	Thread.sleep ( 1000 );
}

public WebElement setForm(){
	return InputForm;
}


public void setSubject(String strSubject) throws InterruptedException {
	Sub.click ();
	Thread.sleep ( 1000 );
	Sub.sendKeys ( strSubject );
	Thread.sleep ( 1000 );
}


}
