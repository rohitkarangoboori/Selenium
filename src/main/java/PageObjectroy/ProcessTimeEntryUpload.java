package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class ProcessTimeEntryUpload {

WebDriver driver;


public ProcessTimeEntryUpload ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
@FindBy(xpath = "//*[@mmf_name='MMF_11']") private WebElement Upload;
@FindBy(xpath = "//*[@mmf_name='MMF_PA054M_PAYROLL_TYPE']") private WebElement payrolltype;
@FindBy(xpath = "//*[@mmf_name='MMF_PA054M_PAYROLL_CYCLE']") private WebElement payrollcycle;
@FindBy(xpath = "//*[@mmf_name='MMF_PA054M_PERIOD']") private WebElement payrollperiod;
@FindBy(xpath = "//*[@mmf_name='MMF_PA054M_ACCT_DATE']") private WebElement batchentrydate;
@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Save;
@FindBy(xpath = "//*[@mmf_name='MMF_9']") private WebElement Change;
@FindBy(xpath = "//*[@mmf_name='MMF_14']") private WebElement Accept;
@FindBy(xpath = "//*[@mmf_name='MMF_7']") private WebElement SelectUnit;
@FindBy(xpath = "//*[@mmf_name='MMF_10']") private WebElement UploadbyUnit;
@FindBy(xpath = "//*[@mmf_name='MMF_8']") private WebElement Delete;
@FindBy(xpath = "//*[@mmf_name='MMF_PA054M_BATCH']") private WebElement BatchNo;
@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement retrieve;
@FindBy(xpath = "//*[@mmf_name='MMF_SCRL1_SCROLL_UNIT_ID']") private WebElement findunit;
@FindBy(xpath = "//*[@mmf_name='MMF_SCRL1_SCROLL_SUBUNIT_ID']") private WebElement subunit;
@FindBy(xpath = "//*[@id='GObutton']") private WebElement gobutton;
@FindBy(xpath = "//*[@mmf_name='MMF_A421_SCRL1_SCROLL_FIELD_4']") private WebElement checkbox;
@FindBy(xpath = "//*[@mmf_name='MMF_18']") private WebElement UploadSU;



public void clickUploadSU() throws InterruptedException {
	UploadSU.click ();
	Thread.sleep ( 1000 );
}

public void clickcheckbox() throws InterruptedException {
	checkbox.click ();
	Thread.sleep ( 1000 );
}

public void clickgo() throws InterruptedException {
	gobutton.click ();
	Thread.sleep ( 1000 );
}

public void clearsubunit() throws InterruptedException {
	subunit.clear ();
	Thread.sleep ( 1000 );
}

public void setfindunit() throws InterruptedException {
	findunit.sendKeys ( "ADMIN" );
	Thread.sleep ( 1000 );
}

public void clickretrieve() throws InterruptedException {
	retrieve.click ();
	Thread.sleep ( 1000 );
}


public String getBatchNo(){
	return BatchNo.getAttribute ( "value" );
}

public void clickDelete() throws InterruptedException {
	Delete.click ();
	Thread.sleep ( 1000 );
}

public void clickUploadUnit() throws InterruptedException {
	UploadbyUnit.click ();
	Thread.sleep ( 2000 );
	
}

public void clickSelectUnit() throws InterruptedException {
	SelectUnit.click ();
	Thread.sleep ( 1000 );
}

public void clickaccept() throws InterruptedException {
	Accept.click ();
	Thread.sleep ( 1000 );
}

public void clickchange() throws InterruptedException {
	Change.click ();
	Thread.sleep ( 1000 );
}

public void clicksave() throws InterruptedException {
	Save.click ();
	Thread.sleep ( 1000 );
}

public void clickupload() throws InterruptedException {
	Upload.click ();
	Thread.sleep ( 1000 );
}

public void strpaytype(String strtype) throws InterruptedException {
	payrolltype.sendKeys ( strtype );
	Thread.sleep ( 1000 );
}

public void strpaycycle(String strcycle) throws InterruptedException {
	payrollcycle.sendKeys ( strcycle );
	Thread.sleep ( 1000 );
}

public void strpayperiod(String strperiod) throws InterruptedException {
	payrollperiod.sendKeys ( strperiod );
	Thread.sleep ( 1000 );
}

public void strbatchdate(String strbatchentry) throws InterruptedException {
	batchentrydate.click ();
	Thread.sleep ( 1000 );
	batchentrydate.sendKeys ( strbatchentry );
	Thread.sleep ( 2000 );
}

}
