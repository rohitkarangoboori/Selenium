package PageObjectroy;

import cucumber.api.Scenario;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class AcceptPayModelling {
WebDriver driver;
Scenario scn;

Actions act;
public AcceptPayModelling ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
@FindBy(xpath = "//*[@mmf_name='MMF_SCRN_EMPL_NO']") private WebElement Employee;
@FindBy(xpath = "//*[@mmf_name='MMF_SCRN_PAY_PERIOD']") private WebElement Payperiod;
@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement Validate;
@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Accept;
@FindBy(xpath = "//*[@mmf_name='MMF_A753_PA319_EARN_CODE_WRK']") private WebElement Earningscode1;
@FindBy(xpath = "//*[@mmf_name='MMF_A833_PA319_EARN_CODE_WRK']") private WebElement Earningscode2;
@FindBy(xpath = "//*[@mmf_name='MMF_A913_PA319_EARN_CODE_WRK']") private WebElement Earningscode3;
@FindBy(xpath = "//*[@mmf_name='MMF_A758_PA319_HOURS_WRK']") private WebElement hours1;
@FindBy(xpath = "//*[@mmf_name='MMF_A838_PA319_HOURS_WRK']") private WebElement hours2;
@FindBy(xpath = "//*[@mmf_name='MMF_A918_PA319_HOURS_WRK']") private WebElement hours3;
@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Add;
@FindBy(xpath = "//*[@mmf_name='MMF_INCLUSIVE_PERIOD_DED']") private WebElement includeded;
@FindBy(xpath = "//*[@mmf_name='MMF_14']") private WebElement Process;
@FindBy(xpath = "//*[@mmf_name='MMF_8']") private WebElement changeearnings;
@FindBy(xpath = "//*[@mmf_name='MMF_11']") private WebElement addearnings;
@FindBy(xpath = "//*[@mmf_name='MMF_9']") private WebElement changedeductions;
@FindBy(xpath = "//*[@mmf_name='MMF_A754_PA220W_EMPLOYEE_AMT']") private WebElement employeeamt1;
@FindBy(xpath = "//*[@mmf_name='MMF_A914_PA220W_EMPLOYEE_AMT']") private WebElement employeeamt3;
@FindBy(xpath = "//*[@mmf_name='MMF_A1234_PA220W_EMPLOYEE_AMT']") private WebElement clearamt;
@FindBy(xpath = "//*[@mmf_name='MMF_A930_PA220W_EMPLOYER_AMT']") private WebElement employeramt;
@FindBy(xpath = "//*[@mmf_name='MMF_7']") private WebElement changeparms;
@FindBy(xpath = "//*[@id='tabName2']") private WebElement annualdeductions;
@FindBy(xpath = "//*[@mmf_name='MMF_PA001M_TD1_EXEMPT']") private WebElement fedexemption;
@FindBy(xpath = "//*[@mmf_name='MMF_STATE_PRO_EXMPT_WRK1']") private WebElement stateexemp;
@FindBy(xpath = "//*[@mmf_name='MMF_PA001M_ANNUAL_DEDUCTION']") private WebElement amount;
@FindBy(xpath = "//*[@mmf_name='MMF_PA001M_ANNUAL_DED_START_DATE']") private WebElement startdate;
@FindBy(xpath = "//*[@mmf_name='MMF_PA001M_ANNUAL_DED_END_DATE']") private WebElement enddate;
@FindBy(xpath = "//*[@mmf_name='MMF_PA001M_W42020_FLAG']") private WebElement W4flag;


public void checkflag() throws InterruptedException {
	W4flag.click ();
	Thread.sleep ( 1000 );
}

public void setStateexemp() throws InterruptedException {
	stateexemp.sendKeys ( "10" );
	Thread.sleep ( 1000 );
}

public void sendfedex() throws InterruptedException {
	fedexemption.sendKeys ( "100" );
	Thread.sleep ( 1000 );
}

public void sendenddate() throws InterruptedException {
	enddate.sendKeys ( "04-30-2022" );
	Thread.sleep ( 1000 );
}

public void sendstartdate() throws InterruptedException {
	startdate.sendKeys ( "01-01-2022" );
	Thread.sleep ( 1000 );
}

public void sendamount() throws InterruptedException {
	amount.sendKeys ( "50" );
	Thread.sleep ( 1000 );
}

public void clickannualded() throws InterruptedException {
	annualdeductions.click ();
	Thread.sleep ( 1000 );
}

public void clickparms() throws InterruptedException {
	changeparms.click ();
	Thread.sleep ( 1000 );
}

public void setemployeramt() throws InterruptedException {
	act =new Actions ( driver );
	act.doubleClick (employeramt).perform ();
	Thread.sleep ( 1000 );
	employeramt.sendKeys ( "160" );
	Thread.sleep ( 1000 );
}

public void clearamt() throws InterruptedException {
	clearamt.clear ();
	Thread.sleep ( 1000 );
}
public void setEmployeeamt3() throws InterruptedException {
	act= new Actions ( driver );
	act.doubleClick (employeeamt3).perform ();
	Thread.sleep ( 2000 );
	employeeamt3.sendKeys ("160" );
	Thread.sleep ( 1000 );
}

public void setEmployeeamt1() throws InterruptedException {
	employeeamt1.sendKeys ( "200" );
	Thread.sleep ( 1000 );
}

public void clickchangeded() throws InterruptedException {
	changedeductions.click ();
	Thread.sleep ( 1000 );
}

public void modifyearnings() throws InterruptedException {
	addearnings.click ();
	Thread.sleep ( 1000 );
}

public void clickearnings() throws InterruptedException {
	changeearnings.click ();
	Thread.sleep ( 1000 );
}

public void clickProcess() throws InterruptedException {
	Process.click ();
	Thread.sleep ( 1000 );
}

public void checkdeduction() throws InterruptedException {
	includeded.click ();
	Thread.sleep ( 1000 );
}

public void addEmployee(String strEmployee) throws InterruptedException {
	Employee.sendKeys ( strEmployee );
	Thread.sleep ( 1000 );
}

public void addPayperiod(String strpayperiod) throws InterruptedException {
	Payperiod.sendKeys ( strpayperiod );
	Thread.sleep ( 1000 );
}

public void clickValidate() throws InterruptedException {
	Validate.click ();
	Thread.sleep ( 1000 );
}

public void clickAccept() throws InterruptedException {
	Accept.click ();
	Thread.sleep ( 2000 );
}

public void setEarningscode1(String strEarningcode1) throws InterruptedException {
	Earningscode1.sendKeys ( strEarningcode1 );
	Thread.sleep ( 1000 );
}
public void setEarningscode2(String strEarningcode2) throws InterruptedException {
	Earningscode2.sendKeys ( strEarningcode2 );
	Thread.sleep ( 1000 );
}
public void setEarningscode3(String strEarningcode3) throws InterruptedException {
	Earningscode3.sendKeys ( strEarningcode3 );
	Thread.sleep ( 1000 );
}

public void setHours1(String strhours1) throws InterruptedException {
	hours1.sendKeys ( strhours1 );
	Thread.sleep ( 1000 );
}

public void setHours2(String strhours2) throws InterruptedException {
	hours2.sendKeys ( strhours2 );
	Thread.sleep ( 1000 );
}
public void setHours3(String strhours3) throws InterruptedException {
	hours3.clear ();
	Thread.sleep ( 2000 );
	
	hours3.sendKeys ( strhours3 );
	Thread.sleep ( 1000 );
}

public void clickAdd() throws InterruptedException {
	Add.click ();

}

}
