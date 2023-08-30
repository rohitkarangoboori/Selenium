package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class EarningsFastTrack {

WebDriver driver;


public EarningsFastTrack ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
	@FindBy(xpath = "//*[@mmf_name='MMF_11']") private WebElement Add;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA054M_PAYROLL_TYPE']") private WebElement Payrolltype;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA054M_PERIOD']") private WebElement Payrollperiod;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA054M_ACCT_DATE']") private WebElement BatchEntryDate;
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Save;
	@FindBy(xpath = "//*[@mmf_name='MMF_messageLine']") WebElement Messagebar;
	@FindBy(xpath = "//*[@mmf_name='MMF_A581_PA307_SCRN_EMPL_NO']") private WebElement Employee1;
	@FindBy(xpath = "//*[@mmf_name='MMF_A661_PA307_SCRN_EMPL_NO']") private WebElement Employee2;
	@FindBy(xpath = "//*[@mmf_name='MMF_A741_PA307_SCRN_EMPL_NO']") private WebElement Employee3;
	@FindBy(xpath = "//*[@mmf_name='MMF_A821_PA307_SCRN_EMPL_NO']") private WebElement Employee4;
	@FindBy(xpath = "//*[@mmf_name='MMF_A901_PA307_SCRN_EMPL_NO']") private WebElement Employee5;
	@FindBy(xpath = "//*[@mmf_name='MMF_A592_SCRN_TRANS_DATE']") private WebElement date1;
	@FindBy(xpath = "//*[@mmf_name='MMF_A672_SCRN_TRANS_DATE']") private WebElement date2;
	@FindBy(xpath = "//*[@mmf_name='MMF_A752_SCRN_TRANS_DATE']") private WebElement date3;
	@FindBy(xpath = "//*[@mmf_name='MMF_A832_SCRN_TRANS_DATE']") private WebElement date4;
	@FindBy(xpath = "//*[@mmf_name='MMF_A912_SCRN_TRANS_DATE']") private WebElement date5;
	@FindBy(xpath = "//*[@mmf_name='MMF_A599_PA101P_EARNING_CODE']") private WebElement Earningcode;
	@FindBy(xpath = "//*[@mmf_name='MMF_A679_PA101P_EARNING_CODE']") private  WebElement Earningcode2;
	@FindBy(xpath = "//*[@mmf_name='MMF_A759_PA101P_EARNING_CODE']") private  WebElement Earningcode3;
	@FindBy(xpath = "//*[@mmf_name='MMF_A839_PA101P_EARNING_CODE']") private  WebElement Earningcode4;
	@FindBy(xpath = "//*[@mmf_name='MMF_A919_PA101P_EARNING_CODE']") private  WebElement Earningcode5;
	@FindBy(xpath = "//*[@mmf_name='MMF_A603_PA101P_HOURS']") private WebElement Hours1;
	@FindBy(xpath = "//*[@mmf_name='MMF_A683_PA101P_HOURS']") private WebElement Hours2;
	@FindBy(xpath = "//*[@mmf_name='MMF_A763_PA101P_HOURS']") private WebElement Hours3;
	@FindBy(xpath = "//*[@mmf_name='MMF_A843_PA101P_HOURS']") private WebElement Hours4;
	@FindBy(xpath = "//*[@mmf_name='MMF_A923_PA101P_HOURS']") private WebElement Hours5;
	@FindBy(xpath = "//*[@mmf_name='MMF_14']") private WebElement UpdateAll;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA054M_BATCH']") private WebElement BatchNo;
	@FindBy(xpath = "//*[@mmf_name='MMF_10']") private WebElement Employeesort;
	@FindBy(xpath = "//*[@mmf_name='MMF_16']") private WebElement Exit;
	@FindBy(xpath = "//*[@mmf_name='MMF_A612_SCRN_WORK_ORDER_612_after_3']") private WebElement Distributioncode;
	@FindBy(xpath = "//*[@mmf_name='MMF_A612_SCRN_WORK_ORDER']") private WebElement dcode;
	@FindBy(xpath = "//*[@mmf_name='MMF_A643_PA101P_EQUIP_NO']") private WebElement Equipment;
	@FindBy(xpath = "//*[@mmf_name='MMF_A649_PA307_RATE_AMOUNT']") private WebElement Rate;
	@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement NotSave;
	
public void clickdonotsave() throws InterruptedException {
	NotSave.click ();
	Thread.sleep ( 1000 );
}
public void addRate(String strRate) throws InterruptedException {
	Rate.click ();
	Rate.sendKeys ( strRate );
	Thread.sleep ( 1000 );
}
	
public void addEquipment(String strEquip) throws InterruptedException {
	Equipment.click ();
	Equipment.sendKeys ( strEquip );
	Thread.sleep ( 1000 );
	
}
	
public void adddcode(String strdcode) throws InterruptedException {
	dcode.click ();
	dcode.sendKeys (strdcode  );
	Thread.sleep ( 1000 );
}

public void addDistributioncode(String strdiscode) throws InterruptedException {
	Distributioncode.click ();
	Distributioncode.sendKeys ( strdiscode );
	Thread.sleep ( 1000 );
	
}
public void clickExit() throws InterruptedException {
	Exit.click ();
	Thread.sleep ( 1000 );
}

public void  clickEmployeesort() throws InterruptedException {
	Employeesort.click ();
	Thread.sleep (1000);
	
}
public String getBatchNo(){
	return BatchNo.getAttribute ( "value" );
}


public String getMessage(){
	return Messagebar.getAttribute("value").trim();
}


public void clickupdate() throws InterruptedException {
		UpdateAll.click ();
		Thread.sleep ( 1000 );
	}
	public void addhours(String strhours1,String strhours2,String strhours3,String strhours4,String strhours5 ) throws InterruptedException {
		Hours1.sendKeys ( strhours1 );
		Hours2.sendKeys ( strhours2 );
		Hours3.sendKeys ( strhours3 );
		Hours4.sendKeys ( strhours4 );
		Hours5.sendKeys ( strhours5 );
		Thread.sleep ( 1000 );
	}
	
	public void addearningscode(String strcode) throws InterruptedException {
		Earningcode.sendKeys ( strcode );
		Thread.sleep ( 1000 );
		Earningcode2.sendKeys ( strcode );
		Thread.sleep ( 1000 );
		Earningcode3.sendKeys ( strcode );
		Thread.sleep ( 1000 );
		Earningcode4.sendKeys ( strcode );
		Thread.sleep ( 1000 );
		Earningcode5.sendKeys ( strcode );
		Thread.sleep ( 1000 );
	}
	
	public void adddate(String strdate) throws InterruptedException {
		date1.click ();
		date1.sendKeys ( strdate );
		Thread.sleep ( 1000 );
		date2.click ();
		date2.sendKeys ( strdate );
		Thread.sleep ( 1000 );
		date3.click ();
		date3.sendKeys ( strdate );
		Thread.sleep ( 1000 );
		date4.click ();
		date4.sendKeys ( strdate );
		Thread.sleep ( 1000 );
		date5.click ();
		date5.sendKeys ( strdate );
		Thread.sleep ( 1000 );
	}
	
	public void addemployee(String stremployee1,String stremployee2,String stremployee3,String stremployee4,String stremployee5) throws InterruptedException {
		Employee1.sendKeys ( stremployee1 );
		Employee2.sendKeys ( stremployee2 );
		Employee3.sendKeys ( stremployee3 );
		Employee4.sendKeys ( stremployee4 );
		Employee5.sendKeys ( stremployee5 );
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
	
	public void strtype(String strPaytype) throws InterruptedException {
		Payrolltype.sendKeys (strPaytype);
		Thread.sleep ( 1000 );
	}
	
	public void strperiod(String strPayperiod) throws InterruptedException {
		Payrollperiod.sendKeys (strPayperiod);
		Thread.sleep ( 1000 );
		
	}
	
	public void strbatchdate(String strbatch) throws InterruptedException {
		BatchEntryDate.click ();
		Thread.sleep ( 1000 );
		BatchEntryDate.sendKeys ( strbatch );
		Thread.sleep ( 1000 );
	}
	
	

}