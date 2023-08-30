package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class PayrollSpecialCheck {

WebDriver driver;


public PayrollSpecialCheck ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
@FindBy(xpath = "//*[@mmf_name='MMF_PA380_PAYROLL_TYPE']") private WebElement Paytype;
@FindBy(xpath = "//*[@mmf_name='MMF_PA380_PAYROLL_CYCLE']") private WebElement Paycycle;
@FindBy(xpath = "//*[@mmf_name='MMF_PA380_PAY_PERIOD']") private WebElement Payperiod;
@FindBy(xpath = "//*[@mmf_name='MMF_PA380_TRANS_TYPE']") private WebElement Transactiontype;
@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement Validate;
@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Accept;
@FindBy(xpath = "//*[@mmf_name='MMF_SCREEN_EMPL_NO']") private WebElement Employeenumber;
@FindBy(xpath = "//*[@mmf_name='MMF_11']") private WebElement Add;
@FindBy(xpath = "//*[@mmf_name='MMF_A741_PA319_DATE_WRK']") private WebElement Date;
@FindBy(xpath = "//*[@mmf_name='MMF_A821_PA319_DATE_WRK']") private WebElement Date2;
@FindBy(xpath = "//*[@mmf_name='MMF_A748_PA319_EARN_CODE_WRK']") private WebElement Earningcode;
@FindBy(xpath = "//*[@mmf_name='MMF_A828_PA319_EARN_CODE_WRK']") private WebElement Earningcode2;
@FindBy(xpath = "//*[@mmf_name='MMF_A752_PA319_HOURS_WRK']") private WebElement Hours;
@FindBy(xpath = "//*[@mmf_name='MMF_A832_PA319_HOURS_WRK']") private WebElement Hours2;
@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Addrecord;
@FindBy(xpath = "//*[@mmf_name='MMF_14']") private WebElement ProcessingComplete;
@FindBy(xpath = "//*[@mmf_name='MMF_messageLine']") private WebElement Messagebar;
@FindBy(xpath = "//*[@mmf_name='MMF_16']") private WebElement CompleteProcessing;
@FindBy(xpath = "//*[@mmf_name='MMF_PA036M_DESCRIPTION_WRK']") private WebElement pageclick;
@FindBy(xpath = "//*[@mmf_name='MMF_9']") private WebElement ChangeEarnings;
@FindBy(xpath = "//*[@mmf_name='MMF_A757_PA302_EMPLOYEE_DED_AMT']") private WebElement changedeductions;
@FindBy(xpath = "//*[@name='arrow11']") private WebElement arrow;
@FindBy(xpath = "//*[@mmf_name='MMF_8']") private WebElement delete;
@FindBy(xpath = "//*[@mmf_name='MMF_5']") private WebElement selectdeselect;
@FindBy(xpath = "//*[@mmf_name='MMF_A510_DEDT_SCROLL_FIELD_4']") private WebElement firstinclude;
@FindBy(xpath = "//*[@mmf_name='MMF_A830_DEDT_SCROLL_FIELD_4']") private WebElement secondinclude;
@FindBy(xpath = "//*[@mmf_name='MMF_JC_DETAIL_FLAG']") private WebElement JCBflag;
@FindBy(xpath = "//*[@mmf_name='MMF_MANUALS_ALLOW_DD_FLAG']") private WebElement allowDD;
@FindBy(xpath = "//*[@mmf_name='MMF_ISSUES_MESSAGE_FLAG']") private WebElement excludeadvance;


public void checkpoptionthree() throws InterruptedException {
	excludeadvance.click ();
	Thread.sleep ( 1000 );
}


public void checkpoptiontwo() throws InterruptedException {
	allowDD.click ();
	Thread.sleep ( 1000 );
}

public void checkpoptionone() throws InterruptedException {
	JCBflag.click ();
	Thread.sleep ( 1000 );
}

public WebElement clicksecondinclude() throws InterruptedException {
	secondinclude.click ();
	Thread.sleep ( 1000 );
	return secondinclude;
}

public WebElement clickfirstinclude() throws InterruptedException {
	firstinclude.click ();
	Thread.sleep ( 1000 );
	return firstinclude;
}

public void clickselect() throws InterruptedException {
	selectdeselect.click ();
	Thread.sleep ( 1000 );
}

public void clickdeleteicon() throws InterruptedException {
	delete.click ();
	Thread.sleep ( 1000 );
}

public void clickarrow() throws InterruptedException {
	arrow.click ();
	Thread.sleep ( 1000 );
}

public void modifyhours() throws InterruptedException {
	Actions act =new Actions ( driver );
	act.doubleClick (Hours).perform ();
	Hours.sendKeys ( "60" );
	Thread.sleep ( 1000 );
	act.doubleClick (Hours2).perform ();
	Hours2.sendKeys ( "20" );
	Thread.sleep ( 1000 );
}

public void clickchangedeductions() throws InterruptedException {
	changedeductions.click ();
	Thread.sleep ( 1000 );
}

public void clickchangeearnings() throws InterruptedException {
	ChangeEarnings.click ();
	Thread.sleep ( 1000 );
}

public void enterhours2(String strhours2) throws InterruptedException {
	
	Hours2.sendKeys ( strhours2);
	Thread.sleep ( 1000 );
}

public void enterearningcode2( String strcode2) throws InterruptedException {
	Earningcode2.sendKeys ( strcode2 );
	Thread.sleep ( 1000 );
}

public void enterdate2(String strdate2) throws InterruptedException {
	Date2.sendKeys ( strdate2 );
	Thread.sleep ( 1000 );
}

public String getMessage(){
	return Messagebar.getAttribute("value").trim ();
}

public void setPageclick(){}

public void clickcprocessing() throws InterruptedException {
	CompleteProcessing.click ();
	Thread.sleep ( 1000 );
}

public void clickpcomplete() throws InterruptedException {
	ProcessingComplete.click ();
	Thread.sleep ( 1000 );
}

public void clickaddrecord() throws InterruptedException {
	Addrecord.click ();
	Thread.sleep ( 1000 );
}
public void enterhours(String strhours) throws InterruptedException {
	Hours.sendKeys ( strhours);
	Thread.sleep ( 1000 );
}

public void enterearningcode( String strcode) throws InterruptedException {
	Earningcode.sendKeys ( strcode );
	Thread.sleep ( 1000 );
}

public void enterdate(String strdate) throws InterruptedException {
	Date.click ();
	Thread.sleep ( 1000 );
	Date.sendKeys ( strdate );
	Thread.sleep ( 1000 );
}
public void clickadd() throws InterruptedException {
	Add.click ();
	Thread.sleep ( 1000 );
}
public void getEmployeenumber(String stremployee) throws InterruptedException {
	Employeenumber.sendKeys ( stremployee );
	Thread.sleep ( 1000 );
}

public void getpayrolltype(String strpaytype) throws InterruptedException {
	Paytype.sendKeys ( strpaytype );
	Thread.sleep ( 1000 );
	
}

public void getpayrollcycle(String strpaycycle) throws InterruptedException {
	Paycycle.sendKeys ( strpaycycle );
	Thread.sleep ( 1000 );
}

public void getpayrollperiod(String strpayperiod) throws InterruptedException {
	Payperiod.sendKeys ( strpayperiod );
	Thread.sleep ( 1000 );
}
public WebElement dropdowntype() throws InterruptedException {
	Transactiontype.click ();
	Thread.sleep ( 1000 );
	return Transactiontype;
	
}

public void clickvalidate() throws InterruptedException {
	Validate.click ();
	Thread.sleep ( 1000 );
}

public void clickaccept() throws InterruptedException {
	Accept.click ();
	Thread.sleep ( 1000 );
}



}
