package PageObjectroy;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.text.SimpleDateFormat;
import java.util.Date;

public class InvoiceEntry {

	WebDriver driver;
	public static String a;
	public InvoiceEntry(WebDriver driver) {
		 this.driver = driver;
	        PageFactory.initElements(driver, this);
	    }

	@FindBy(xpath="//select[@mmf_name='MMF_WS_FORM_FLAG']") private WebElement Formname;
	@FindBy(xpath="//*[@name='AP010M_CURRENCY_STATUS']") private WebElement PageClick;
	@FindBy(xpath="//*//*[@id='AP009M_ACCT_DATE']") private WebElement Datepa;
	@FindBy(id="ext-gen61") private WebElement DatePicker;
	@FindBy(id="ext-gen96") private  WebElement MonthPicker;
	@FindBy(xpath="//*[@id='ext-gen101']/tbody/tr[6]/td[1]/a") private WebElement MonPicker;
	@FindBy(xpath="//*[@class='x-date-mp-ok']") private WebElement DOk;
	@FindBy(xpath ="//*[text()='14']") private WebElement DayPick;
	@FindBy(xpath = "//*[@id='LookUpField7Trigger']") private WebElement SupplierSearch;
	@FindBy(id="AP010M_SUPPLIER_NUMBER") private WebElement supplier;
	@FindBy(id="AP010M_INVOICE_KEY3") private WebElement Invoice;
	@FindBy(id="ext-gen64") private WebElement InDatePicker;
    @FindBy(id="ext-gen93") private WebElement InMonthSelector;
    @FindBy(xpath="//*[@mmf_name='MMF_WS_DESC']") private WebElement Des;
    @FindBy(xpath="//*[@id='AP010M_ORI_AMT_FRD']") private WebElement Amount;
    @FindBy(xpath = "//a[contains(text(),'2021')]") private  WebElement Year;
	@FindBy(xpath = "//*[@id='ext-comp-1004']") private WebElement rowamount;
	@FindBy(xpath = "//*[@id='ext-gen18']") private WebElement AddRow;
	@FindBy(id="ext-comp-1001") private WebElement Postingcode;
	@FindBy(id="ext-comp-1002") private WebElement cd;
	@FindBy(xpath="/html/body/form/div[8]/div/table/tbody/tr/td/table[1]/tbody/tr/td/table[1]/tbody/tr/td[8]/img") private WebElement  save;
	@FindBy(xpath ="//*[@id='ext-gen34']") private WebElement editlist;
	@FindBy(xpath="//*[@id='ext-gen38']") private WebElement approve;
	@FindBy(xpath = "//*[@title='Exit ']") private WebElement exit;
	@FindBy(xpath = "//*[@mmf_name='MMF_messageLine']") WebElement Messagebar;
	@FindBy(xpath = "//[@id='ext-gen20']") private WebElement removerow;
	@FindBy(xpath = "//*[@mmf_name='MMF_INVOICE_KEY3_WRK']") private WebElement InvoiceSelectionOutput;


	public String getMessage(){
		return Messagebar.getAttribute("value").trim();
		}

	public void cleargridamount(){
	rowamount.clear();
	}


	public void clickapprove() throws InterruptedException {
		Thread.sleep(5000);
		//System.out.println("Approval Completed");
		approve.click();
		Thread.sleep(2000);
	}

	public void clickeditlist() throws InterruptedException {
		//System.out.println("Report Generated");
		editlist.click();
		Thread.sleep(1000);
	}

	public  void clickYear(){
		Year.click();
	}

	public void clickSave() throws InterruptedException {

		save.click();
	//	System.out.println("Record saved as requested");
		Thread.sleep(1000);

}

	public void strCD(String strCD){

	cd.sendKeys(strCD);
}
	public void clickAmt() {Amount.click();}

	public void clearWebField(){
	while(!Amount.getAttribute("value").equals("0.00")){
		Amount.sendKeys(Keys.BACK_SPACE);
		break;
	}
	}
	public void clearAmt() throws InterruptedException {
	Amount.clear();
}
	public void strPostingCode(String strPostingCode)
{
	Postingcode.sendKeys(strPostingCode);
}
	public void clickAddRow(){
	AddRow.click();
}
	public void strAmount(String strAmount){
		Amount.click();
	Amount.sendKeys(strAmount);
}
    public void strDes(String strDes) throws InterruptedException {
		Des.sendKeys(" ");
		Thread.sleep(2000);
		Des.click();
		Des.clear();
		Des.sendKeys(strDes);
	}

    public void clickMonthSelector(){
    	InMonthSelector.click();
	}

	public void clickInDatePicker(){
		InDatePicker.click();
	}


	public String strInvoice() {
		String inv = "AUT-INV-" + new SimpleDateFormat("ddMMyyhhmmss").format(new Date());
		a = inv;
		Invoice.sendKeys(inv);
		System.out.print(inv);
		return inv;
	}
	public void strISO() throws InterruptedException {
		InvoiceSelectionOutput.click();
		Thread.sleep(1000);
		InvoiceSelectionOutput.sendKeys(a);
	}
	public void strsupplier(String strsupplier){
		supplier.sendKeys(strsupplier);
	}

	public void clickSupplierSearch(){
		SupplierSearch.click();

	}
	public void clickDayPick(){
		DayPick.click();
	}

	public  void clickOk(){
		DOk.click();
}
	public void clickMonpicker(){
		MonPicker.click();
	}

	public void clickMonthPicker(){
		MonthPicker.click();
	}

	public void clickDatePicker(){
		DatePicker.click();
	}

	public void strDate(String strDate) {
		Datepa.sendKeys(strDate);
	}

	public WebElement dropdownform() {
		return Formname;
	}
	public void clickPage(){
		PageClick.click();
	}
	public void cleardate(){
		Datepa.clear();
	}


}





