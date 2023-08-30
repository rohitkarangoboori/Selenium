package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class RegularEarningsEntry {

WebDriver driver;

public RegularEarningsEntry ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
	@FindBy(xpath = "//*[@mmf_name='MMF_11']") private WebElement Add;
	@FindBy(xpath = "//*[@mmf_name='MMF_A533_PA054M_PAYROLL_TYPE']") private WebElement PayrollType;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA054M_PERIOD']") private WebElement Payperiod;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA054M_ACCT_DATE']") private WebElement BatchDate;
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Save;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA321_EMPL_NO_WRK']") private WebElement Empnumber;
	@FindBy(xpath = "//*[@mmf_name='MMF_A741_PA319_DATE_WRK']") private WebElement datework;
	@FindBy(xpath = "//*[@mmf_name='MMF_A748_PA319_EARN_CODE_WRK']") private WebElement Earningscode;
	@FindBy(xpath = "//*[@mmf_name='MMF_A752_PA319_HOURS_WRK']") private WebElement Hours;
	@FindBy(xpath = "//*[@mmf_name='MMF_A761_PA319_DIST_CODE_WRK']") private WebElement Distcode;
	@FindBy(xpath = "//*[@mmf_name='MMF_A761_PA319_DIST_CODE_WRK_761_after_3']") private WebElement Distcodework;
	@FindBy(xpath = "MMF_A784_PA319_OCC_CODE_WRK") private WebElement OccCode;
	@FindBy(xpath = "MMF_A792_PA319_EQUIP_NO_WRK") private WebElement EquipCode;
	@FindBy(xpath = "//*[@mmf_name='MMF_A798_PA319_RATE_WRK']") private WebElement Rate;
	@FindBy(xpath = "MMF_A807_PA319_AMOUNT_WRK") private WebElement Amount;
	@FindBy(xpath = "//*[@mmf_name='MMF_14']") private WebElement ProcessComplete;

	
public void setProcessComplete() throws InterruptedException {
	ProcessComplete.click ();
	Thread.sleep ( 1000 );
}

public void setAmount(String stramount) throws InterruptedException {
		Amount.click ();
		Amount.sendKeys ( stramount );
		Thread.sleep ( 1000 );
	}
	
public void setRate( String strrate) throws InterruptedException {
	Rate.click ();
	Rate.sendKeys ( strrate );
	Thread.sleep ( 1000 );
}
public void setEquipCode(String strEquipcode) throws InterruptedException {
	EquipCode.click ();
	EquipCode.sendKeys ( strEquipcode );
	Thread.sleep ( 1000 );
}

public void setOccCode(String strOcccode) throws InterruptedException {
	OccCode.click ();
	OccCode.sendKeys ( strOcccode );
	Thread.sleep ( 1000 );
}

public void setDistcodework(String strdcodework) throws InterruptedException {
	Distcodework.click ();
	Distcodework.sendKeys ( strdcodework );
	Thread.sleep ( 1000 );
}

public void setDistcode(String strdcode) throws InterruptedException {
	Distcode.click ();
	Distcode.sendKeys ( strdcode );
	Thread.sleep ( 1000 );
	}
	
public void sendhours(String strhours) throws InterruptedException {
	Hours.click ();
	Hours.sendKeys ( strhours );
	Thread.sleep ( 1000 );
}

public void sendEarningscode( String strearncode) throws InterruptedException {
	Earningscode.click ();
	Earningscode.sendKeys ( strearncode );
	Thread.sleep ( 1000 );
	
}
public void sendDate(String strdate) throws InterruptedException {
	datework.click ();
	datework.sendKeys ( strdate );
	Thread.sleep ( 1000 );
}
	
public void sendEmplnum( String strEmp) throws InterruptedException {
	Empnumber.click ();
	Empnumber.sendKeys ( strEmp );
	Thread.sleep ( 1000 );
}

public void clickSave() throws InterruptedException {
	Save.click ();
	Thread.sleep ( 2000 );
	
}

public void clickAdd() throws InterruptedException {
	Add.click ();
	Thread.sleep ( 1000 );
}

public void strpaytype(String strPaytype) throws InterruptedException {
	PayrollType.sendKeys (strPaytype);
	Thread.sleep ( 1000 );
}

public void strpayperiod(String strPayperiod) throws InterruptedException {
	Payperiod.sendKeys (strPayperiod);
	Thread.sleep ( 1000 );
	
}

public void strbatchdate(String strbatch) throws InterruptedException {
	BatchDate.click ();
	Thread.sleep ( 1000 );
	BatchDate.sendKeys ( strbatch );
	Thread.sleep ( 1000 );
}

	
	
	
	
	
	
	
	
	
	
	
}
