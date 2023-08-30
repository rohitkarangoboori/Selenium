package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class DirectDepositProcessing {

WebDriver driver;

public DirectDepositProcessing ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
	@FindBy(xpath = "//*[@mmf_name='MMF_PA566_DATE_FROM_8']") private WebElement DDCheckDateFrom;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA566_DATE_TO_8']") private WebElement DDCheckDateTo;
	@FindBy(xpath = "//*[@mmf_name='MMF_RECONCILE_DATE']") private WebElement DDReconcileDate;
	@FindBy(xpath = "//*[@mmf_name='MMF_GL_DD_POSTING_DATE']") private WebElement GLPostingDate;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA566_PRINT_REPORT']") private WebElement PrintDDReport;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA566_CREATE_FILE']") private WebElement CreateDDFile;
	@FindBy(xpath = "//*[@mmf_name='MMF_POSTING_DATE']") private WebElement BankPostingDate;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA566_FILE_ID_MOD']") private WebElement DDModifier;
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement CreateFileReport;
	@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement Prenotificationfile;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA566_CHQ_OR_DED_FLAG']") private WebElement DepositChecks;
	@FindBy(xpath = "//*[@mmf_name='MMF_3']") private WebElement UnreconcileCheck;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA566_NAME_SEQUENCE']") private WebElement Sequence;
	
	public WebElement selectSequence() throws InterruptedException {
		Sequence.click ();
		Thread.sleep ( 2000 );
		return Sequence;
	}
	
	public void clickUnreconcile() throws InterruptedException {
		UnreconcileCheck.click ();
		Thread.sleep ( 1000 );
	}
	
	public WebElement selectChecks() throws InterruptedException {
		DepositChecks.click ();
		Thread.sleep ( 2000 );
		return DepositChecks;
	}
	
	public void clickPrenotification() throws InterruptedException {
		Prenotificationfile.click ();
		Thread.sleep ( 1000 );
	}
	
	public void setDDCheckDateFrom(String strDDFrom) throws InterruptedException {
	DDCheckDateFrom.sendKeys ( strDDFrom );
	Thread.sleep ( 1000 );
	
	}
	public void setDDCheckDateTo(String strDDTo) throws InterruptedException {
	DDCheckDateTo.sendKeys ( strDDTo );
	Thread.sleep ( 1000 );
	
	}
	public void setDDReconcileDate(String strDDRecDate) throws InterruptedException {
		DDReconcileDate.sendKeys ( strDDRecDate );
		Thread.sleep ( 1000 );
	}
	public void setGLPostingDate(String GLDate) throws InterruptedException {
		GLPostingDate.click ();
		Thread.sleep ( 1000 );
		GLPostingDate.sendKeys ( GLDate );
		Thread.sleep ( 1000 );
	}
	public void checkPrintDDReport() throws InterruptedException {
		PrintDDReport.click ();
		Thread.sleep ( 1000 );
	}
	public WebElement dropdowncreateDDFile() throws InterruptedException {
		CreateDDFile.click ();
		Thread.sleep ( 1000 );
		return CreateDDFile;
	}
	public void setBankPostingDate(String strBankpostingdate) throws InterruptedException {
		BankPostingDate.sendKeys (strBankpostingdate  );
		Thread.sleep ( 1000 );
	}
	public void setDDModifier() throws InterruptedException {
		DDModifier.sendKeys ( "D" );
		Thread.sleep ( 1000 );
	}
	public void clickCreateFileReport() throws InterruptedException {
		CreateFileReport.click ();
		Thread.sleep ( 1000 );
	}

}
