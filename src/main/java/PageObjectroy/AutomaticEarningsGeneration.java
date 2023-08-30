package PageObjectroy;

import cucumber.api.Scenario;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class AutomaticEarningsGeneration {

WebDriver driver;
Scenario scn;

Actions act;
public AutomaticEarningsGeneration ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}

@FindBy(xpath = "//*[@mmf_name='MMF_PA530_PAYROLL_PERIOD']") private WebElement PayPeriod;
@FindBy(xpath = "//*[@mmf_name='MMF_PA530_GENERATION_DATE']") private WebElement BatchDate;
@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Continue;
@FindBy(xpath = "//*[@mmf_name='MMF_PA530_PAYROLL_TYPE']") private WebElement PayrollType;
@FindBy(xpath = "//*[@mmf_name='MMF_PA530_PAYROLL_CYCLE']") private WebElement Payrollcycle;
@FindBy(xpath = "//*[@mmf_name='MMF_PA530_EARNING_CODE']") private WebElement Earningscode;
@FindBy(xpath = "//*[@mmf_name='MMF_PA530_SELECTION_TYPE']") private WebElement SelectionType;
@FindBy(xpath = "//*[@mmf_name='MMF_PA530_FREQUENCY']") private WebElement Frequency;
@FindBy(xpath = "//*[@mmf_name='MMF_PA530_SCRN_START_DATE']") private WebElement DateFrom;
@FindBy(xpath = "//*[@mmf_name='MMF_PA530_SCRN_END_DATE']") private WebElement DateTo;
@FindBy(xpath = "//*[@mmf_name='MMF_PA530_STD_HOURS_FLAG']") private WebElement StandardHours;
@FindBy(xpath = "//*[@mmf_name='MMF_PA530_NO_OF_HOURS']") private WebElement Hours;
@FindBy(xpath = "//*[@mmf_name='MMF_5']") private WebElement Department;
@FindBy(xpath = "//*[@mmf_name='MMF_4']") private WebElement Group;
@FindBy(xpath = "//*[@mmf_name='MMF_A825_DEPT_SCROLL_FIELD_5']") private WebElement Deptcode;
@FindBy(xpath = "//*[@mmf_name='MMF_A745_GROUP_SCROLL_FIELD_4']") private WebElement Groupcode;

public WebElement setFrequency() throws InterruptedException {
	Frequency.click ();
	Thread.sleep ( 1000 );
	return Frequency;
}

public void setDateTo(String strDateTo) throws InterruptedException {
	DateTo.sendKeys (strDateTo);
	Thread.sleep ( 1000 );
}

public void setDateFrom(String strDateFrom) throws InterruptedException {
	DateFrom.sendKeys (strDateFrom);
	Thread.sleep ( 1000 );
}
public void uncheckStdHours() throws InterruptedException {
	StandardHours.click ();
	Thread.sleep ( 1000 );
}

public void sethours(String strHours) throws InterruptedException {
	Hours.sendKeys ( strHours );
	Thread.sleep ( 1000 );
}

public void clickGroup() throws InterruptedException {
	Group.click ();
	Thread.sleep ( 1000 );
}

public void selectgroupcode() throws InterruptedException {
	Groupcode.click ();
	Thread.sleep ( 1000 );
}

public WebElement SelectionType() throws InterruptedException {
	SelectionType.click ();
	Thread.sleep ( 1000 );
	return SelectionType;
}

public void checkDeptcode() throws InterruptedException {
	Deptcode.click ();
	Thread.sleep ( 1000 );
}

public void clickDepartment() throws InterruptedException {
	Department.click ();
	Thread.sleep ( 1000 );
}

public void sendEarningscode(String strEarningscode) throws InterruptedException {
	Earningscode.sendKeys ( strEarningscode );
	Thread.sleep ( 1000 );
}

public void sendPayrollCycle(String strPayrollCycle) throws InterruptedException {
	Payrollcycle.sendKeys ( strPayrollCycle );
	Thread.sleep ( 1000 );
}

public void sendPayrollType(String strPayrollType) throws InterruptedException {
	PayrollType.sendKeys ( strPayrollType );
	Thread.sleep ( 1000 );
}

public void sendPayPeriod(String strPayperiod) throws InterruptedException {
	PayPeriod.sendKeys ( strPayperiod );
	Thread.sleep ( 1000 );
}

public void sendBatchDate( String strbatchdate) throws InterruptedException {
	BatchDate.sendKeys ( strbatchdate );
	Thread.sleep ( 1000 );
}

public void clickContinue() throws InterruptedException {
	Continue.click ();
	Thread.sleep ( 1000 );
}




}
