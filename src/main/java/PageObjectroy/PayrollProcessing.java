package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class PayrollProcessing {

WebDriver driver;

public PayrollProcessing ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
@FindBy(xpath = "//*[@mmf_name='MMF_PA350_PAYROLL_TYPE']") private WebElement payrolltype;
@FindBy(xpath = "//*[@mmf_name='MMF_PA350_PAYROLL_CYCLE']") private WebElement payrollcycle;
@FindBy(xpath = "//*[@mmf_name='MMF_PA350_PAY_PERIOD']") private WebElement payperiod;
@FindBy(xpath = "//*[@mmf_name='MMF_PA350_FUTURE_PAY_PERIOD']") private WebElement futureperiod;
@FindBy(xpath = "//*[@mmf_name='MMF_RETRO_START_PERIOD']") private WebElement firstperiod;
@FindBy(xpath = "//*[@mmf_name='MMF_RETRO_END_PERIOD']") private WebElement lastperiod;
@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement validate;
@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement process;
@FindBy(xpath = "//*[@mmf_name='MMF_8']") private WebElement deletebackup;
@FindBy(xpath = "//*[@mmf_name='MMF_7']") private WebElement processauditmode;
@FindBy(xpath = "//*[@mmf_name='MMF_2']") private WebElement reenterdata;
@FindBy(xpath = "//*[@mmf_name='MMF_PA350_RECAP_FLAG']") private WebElement glauditrecap;
@FindBy(xpath = "//*[@mmf_name='MMF_ER_BEN_REALLOC_DEPT']") private WebElement EBDept;
@FindBy(xpath = "//*[@mmf_name='MMF_INCL_DIR_DEBITS_FLAG']") private WebElement DDRegister;
@FindBy(xpath = "//*[@mmf_name='MMF_INCLUSIVE_PERIOD_DED']") private WebElement Deductionperiod;
@FindBy(xpath = "//*[@mmf_name='MMF_CHQ_MESSAGE_1']") private WebElement Check;
@FindBy(xpath = "//*[@mmf_name='MMF_CHQ_MESSAGE_2']") private WebElement Message;


public void sendmessage() throws InterruptedException {
	Message.sendKeys ( "Happy Holidays!" );
	Thread.sleep ( 1000 );
}

public void sendcheck() throws InterruptedException {
	Check.sendKeys ( "This is a regular check message" );
	Thread.sleep ( 1000 );
}

public void checkdedperiod() throws InterruptedException {
	Deductionperiod.click ();
	Thread.sleep ( 1000 );
}

public void checkDDregister() throws InterruptedException {
	DDRegister.click ();
	Thread.sleep ( 1000 );
}

public void checkEBDept() throws InterruptedException {
	EBDept.click ();
	Thread.sleep ( 1000 );
}

public void checkglauditrecap() throws InterruptedException {
	glauditrecap.click ();
	Thread.sleep ( 1000 );
	
}
public void clickreenterdata() throws InterruptedException {
	reenterdata.click ();
	Thread.sleep ( 1000 );
}

public void clickprocessauditmode() throws InterruptedException {
	processauditmode.click ();
	Thread.sleep ( 1000 );
}

public void getpayrolltype(String strtype) throws InterruptedException {
	payrolltype.sendKeys (strtype );
	Thread.sleep ( 1000 );
}

public void getpayrollcycle( String strcycle) throws InterruptedException {
	payrollcycle.sendKeys ( strcycle );
	Thread.sleep ( 1000 );
}

public void getpayperiod(String strperiod) throws InterruptedException {
	payperiod.sendKeys ( strperiod );
	Thread.sleep ( 1000 );
	
}

public void getfutureperiod(String strfuture) throws InterruptedException {
	futureperiod.sendKeys ( strfuture );
	Thread.sleep ( 1000 );
}

public void clickvalidate() throws InterruptedException {
	validate.click ();
	Thread.sleep ( 1000 );
}
public void clickprocess() throws InterruptedException {
	process.click ();
	Thread.sleep ( 1000 );
}

public void getfirstperiod(String strfirst) throws InterruptedException {
	firstperiod.sendKeys ( strfirst );
	Thread.sleep ( 1000 );
}

public void getlastperiod(String strlast) throws InterruptedException {
	lastperiod.sendKeys ( strlast );
	Thread.sleep ( 1000 );
}
public void clickdeletoldbackup() throws InterruptedException {
	deletebackup.click ();
	Thread.sleep ( 1000 );
}

}
