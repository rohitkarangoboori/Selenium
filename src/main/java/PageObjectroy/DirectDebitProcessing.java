package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class DirectDebitProcessing {
WebDriver driver;

public DirectDebitProcessing ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
	@FindBy (xpath ="//*[@mmf_name='MMF_PA576_RECORD_ID']") private WebElement Identifier;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA566_DATE_FROM_8']") private WebElement DateFrom;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA566_DATE_TO_8']") private WebElement DateTo;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA566_PRINT_REPORT']") private WebElement PrintReport;
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement CreateReport;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA566_CREATE_FILE']") private WebElement FileOption;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA576_FILE_ID_MOD']") private WebElement DDModifier;
	@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement CreatePrenotification;
	@FindBy(xpath = "//*[@mmf_name='MMF_2']") private WebElement RestoreDD;
	
	
	
	public void clickRestore() throws InterruptedException {
		RestoreDD.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickPrenotification() throws InterruptedException {
		CreatePrenotification.click ();
		Thread.sleep ( 1000 );
	}
	
	public WebElement clickFileOption() throws InterruptedException {
		FileOption.click ();
		Thread.sleep ( 1000 );
		return FileOption;
	}
	
	public void setDDModifier(String strDDModifier) throws InterruptedException {
		DDModifier.click ();
		Thread.sleep ( 1000);
		DDModifier.sendKeys ( strDDModifier );
		Thread.sleep ( 1000 );
	}
	
	public void getIdentifier(String strDDIdentifier) throws InterruptedException {
		Identifier.click ();
		Thread.sleep ( 1000 );
		Identifier.sendKeys ( strDDIdentifier );
		Thread.sleep ( 1000 );
	}
	public void getDateFrom( String strDDFrom) throws InterruptedException {
		DateFrom.sendKeys ( strDDFrom );
		Thread.sleep ( 1000 );
	}
	
	public void getDateTo(String strDDTo) throws InterruptedException {
		DateTo.sendKeys ( strDDTo );
		Thread.sleep ( 1000 );
	}
	public void clickPrintReport() throws InterruptedException {
		PrintReport.click ();
		Thread.sleep ( 1000 );
	}
	public void clickCreateReport() throws InterruptedException {
		CreateReport.click ();
		Thread.sleep ( 1000 );
	}
}
