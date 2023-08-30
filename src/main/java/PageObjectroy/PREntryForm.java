package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class PREntryForm {


WebDriver driver;

public PREntryForm ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
	
}
	@FindBy(xpath = "//*[@mmf_name='MMF_A180_WS_DESCRIPTION_GROUP']") private WebElement Subject;
	@FindBy(xpath = "//*[@mmf_name='MMF_A260_WS_DESCRIPTION_GROUP']") private WebElement RequestBy;
	@FindBy(xpath = "//*[@mmf_name='MMF_PO001M_BUYER']") private WebElement Buyer;
	@FindBy(xpath = "//*[@mmf_name='MMF_PO207W_VENDOR']") private WebElement Supplier;
	@FindBy(xpath = "//*[@mmf_name='MMF_11']") private WebElement Accept;
	@FindBy(xpath = "//*[@mmf_name='MMF_PO207W_DESCRIPTION_GROUP']") private WebElement Description;
	@FindBy(xpath = "//*[@mmf_name='MMF_PO207W_QUANTITY']") private WebElement Quantity;
	@FindBy(xpath = "//*[@mmf_name='MMF_PO207W_UNITS']") private WebElement Units;
	@FindBy(xpath = "//*[@mmf_name='MMF_PO207W_NON_DISCOUNTED_PRICE']") private WebElement Price;
	@FindBy(xpath = "//*[@id='ext-gen18']") private WebElement AddRow;
	@FindBy(xpath = "//*[@id='ext-comp-1001']") private WebElement Posting;
	@FindBy(xpath = "//*[@id='ext-comp-1002']") private WebElement ChargeCD;
	@FindBy(xpath = "//*[@mmf_name='MMF_WS_TEMPLATE']") private WebElement MLATemplate;
	@FindBy(xpath = "//*[@mmf_name='MMF_WS_USER_GROUP']") private WebElement MLAUser;
	@FindBy(xpath = "//*[@mmf_name='MMF_WS_FORM_FLAG']") private WebElement Form;
	@FindBy(xpath = "//*[@mmf_name='MMF_A142_WS_FLAG_1']") private WebElement AutoPO;
	@FindBy(xpath = "//*[@id='ext-gen24']") private WebElement EditList;
	@FindBy(xpath = "//*[@id='ext-gen28']") private WebElement Approval;
	@FindBy(xpath = "//*[@mmf_name='MMF_A119_WS_PREFIX']") private WebElement Prefix;
	@FindBy(xpath = "//*[@mmf_name='MMF_A122_WS_NUMBER']") private WebElement Number;
	@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement Retrieve;
	@FindBy(xpath = "//*[@mmf_name='MMF_A321_WS_FLAG_1']") private WebElement HeaderGL;
	@FindBy(xpath = "//*[@mmf_name='MMF_PO207W_TAX_CODE']") private WebElement Tax;
	@FindBy(xpath = "//*[@id='ext-gen56']") private WebElement Record;
	@FindBy(xpath = "//*[@mmf_name='MMF_WS_FROM_PR_PREFIX']") private WebElement EditFromPrefix;
	@FindBy(xpath = "//*[@mmf_name='MMF_WS_FROM_PR_NUMBER']") private WebElement EditFromNumber;
	@FindBy(xpath = "//*[@mmf_name='MMF_WS_TO_PR_PREFIX']") private WebElement EditToPrefix;
	@FindBy(xpath = "//*[@mmf_name='MMF_WS_TO_PR_NUMBER']") private WebElement EditToNumber;
	@FindBy(xpath = "//*[@id='ext-gen3']") private WebElement PREdit;



	public void clickPREdit() throws InterruptedException {
		PREdit.click ();
		Thread.sleep ( 1000 );
	}
	
	public void setUnit(String strUnit) throws InterruptedException {
	Units.click ();
	Thread.sleep ( 1000 );
	Units.sendKeys ( strUnit );
	Thread.sleep ( 1000 );
	}

	public void clickRecord() throws InterruptedException {
		Record.click ();
		Thread.sleep ( 1000 );
	}
	public void setTax(String strTax) throws InterruptedException {
		Tax.click ();
		Thread.sleep ( 1000 );
		Tax.sendKeys ( strTax);
		Thread.sleep ( 1000 );
	}
	
	public void clickHeaderGL() throws InterruptedException {
		HeaderGL.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickRetrieve() throws InterruptedException {
		Retrieve.click ();
		Thread.sleep ( 1000 );
	}
	
	public String getReqnumber(){
		return Number.getAttribute("value").trim ();
	}
	
	public String getReqPrefix(){
		return Prefix.getAttribute("value").trim ();
	}
	
	public void clickApproval() throws InterruptedException {
		Approval.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickEditList() throws InterruptedException {
		EditList.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickAutoPO() throws InterruptedException {
		AutoPO.click ();
		Thread.sleep ( 1000 );
	}
	
	public WebElement setForm(){
		return Form;
	}
	/*
	public void setMLAUser(String strMLAUser) throws InterruptedException {
		MLAUser.click ();
		Thread.sleep ( 1000 );
		MLAUser.sendKeys ( strMLAUser );
		Thread.sleep ( 1000 );
	}
	
	 */
	
	
	public void setSubject(String strSubject) throws InterruptedException {
		Subject.click ();
		Thread.sleep ( 1000 );
		Subject.sendKeys ( strSubject );
		Thread.sleep ( 1000 );
	}
	
	public void setRequestBy(String strRequest) throws InterruptedException {
		RequestBy.click ();
		Thread.sleep ( 1000 );
		RequestBy.sendKeys ( strRequest );
		Thread.sleep ( 1000 );
	}
	
	
	public void setBuyer(String strBuyer) throws InterruptedException {
	Buyer.click ();
	Thread.sleep ( 1000 );
	Buyer.sendKeys ( strBuyer );
	Thread.sleep ( 1000 );
	}

	public void clickAccept() throws InterruptedException {
	Accept.click ();
	Thread.sleep ( 1000 );
	}

	public void setSupplier(String strSupplier) throws InterruptedException {
	Supplier.click ();
	Thread.sleep ( 1000 );
	Supplier.sendKeys ( strSupplier );
	Thread.sleep ( 1000 );
	}


	public void setDescription(String strDes) throws InterruptedException {
	Description.click ();
	Thread.sleep ( 1000 );
	Description.sendKeys ( strDes );
	Thread.sleep ( 1000 );
	}


	public void setQuantity(String strQuantity) throws InterruptedException {
		
		Actions actions =new Actions ( driver );
		actions.doubleClick (Quantity).perform ();
		Quantity.sendKeys ( strQuantity );
		Thread.sleep ( 1000 );
	}


	public void setUnits(String strUnit) throws InterruptedException {
		Units.click ();
		Thread.sleep ( 1000 );
		Units.sendKeys ( strUnit );
		Thread.sleep ( 1000 );
	}
	
	public void setPrice(String strPrice) throws InterruptedException {
		Price.click ();
		Thread.sleep ( 1000 );
		Price.sendKeys ( strPrice );
		Thread.sleep ( 1000 );
	}

	public void clickAddRow(){
	AddRow.click();
	}
	
	public void setPosting(String strPosting) throws InterruptedException {
		Posting.click ();
		Thread.sleep ( 1000 );
		Posting.click ();
		Thread.sleep ( 1000 );

		Posting.sendKeys ( strPosting );
		Thread.sleep ( 1000 );
	}
	
	public void setChargeCD(String strChargeCD) throws InterruptedException {
		ChargeCD.click ();
		Thread.sleep ( 1000 );
		ChargeCD.sendKeys ( strChargeCD );
		Thread.sleep ( 1000 );
	}
	/*
	public void setMLATemplate(String strMLATemp) throws InterruptedException {
		MLATemplate.click ();
		Thread.sleep ( 1000 );
		MLATemplate.sendKeys ( strMLATemp );
		Thread.sleep ( 1000 );
	}
	
	 */
	
	
	
}