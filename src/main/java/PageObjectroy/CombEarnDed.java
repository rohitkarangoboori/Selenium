package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class CombEarnDed {


WebDriver driver;

public CombEarnDed ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
	
}

	@FindBy(xpath = "//*[@mmf_name='MMF_PA036M_PAYROLL_TYPE']") private WebElement Paytype;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA037M_PAYROLL_CYCLE']") private WebElement Paycycle;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA007M_PAY_PERIOD']") private WebElement Payperiod;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA407Z1_NAME_SEQ']") private WebElement Sequence;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA407Z1_AVGE_EARN']") private WebElement AvgEarn;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA407Z1_AVGE_DED']") private WebElement AvgDed;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA407_AUDIT_MODE']") private WebElement AuditTables;
	@FindBy(xpath = "//*[@mmf_name='MMF_3']") private WebElement Cancellations;
	@FindBy(xpath = "//*[@mmf_name='MMF_6']") private WebElement Duplications;
	@FindBy(xpath = "//*[@mmf_name='MMF_5']") private WebElement Issued;
	@FindBy(xpath = "//*[@mmf_name='MMF_2']") private WebElement Manual;
	@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement Regular;
	
	
	public void setPaytype(String strPaytype) throws InterruptedException {
		Paytype.sendKeys (strPaytype );
		Thread.sleep ( 1000 );
	}
	
	public void setPaycycle(String strPaycycle) throws InterruptedException {
		Paycycle.sendKeys (strPaycycle);
		Thread.sleep ( 1000 );
	}
	
	public void setPayperiod(String strPayperiod) throws InterruptedException {
		Payperiod.sendKeys (strPayperiod);
		Thread.sleep ( 1000 );
	}
	
	public void checkSequence() throws InterruptedException {
		Sequence.click ();
		Thread.sleep ( 1000 );
	}
	
	public void setAvgEarn(String stravgEarn) throws InterruptedException {
		AvgEarn.sendKeys ( stravgEarn );
		Thread.sleep ( 1000 );
	}
	
	public void setAvgDed(String stravgDed) throws InterruptedException {
		AvgDed.sendKeys ( stravgDed );
		Thread.sleep ( 1000 );
	}
	
	public void checkAuditTables() throws InterruptedException {
		AuditTables.click ();
		Thread.sleep ( 1000 );
	}
	public void clickCancellation() throws InterruptedException {
		Cancellations.click ();
		Thread.sleep ( 1000 );
	}
	public void clickDuplication() throws InterruptedException {
		Duplications.click ();
		Thread.sleep ( 1000 );
	}
	public void clickIssued() throws InterruptedException {
		Issued.click ();
		Thread.sleep ( 1000 );
	}
	public void clickManual() throws InterruptedException {
		Manual.click ();
		Thread.sleep ( 1000 );
	}
	public void clickRegular() throws InterruptedException {
		Regular.click ();
		Thread.sleep ( 1000 );
	}
	
	
	
}
