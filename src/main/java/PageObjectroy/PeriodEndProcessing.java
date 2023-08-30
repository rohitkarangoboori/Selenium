package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class PeriodEndProcessing {

WebDriver driver;

public PeriodEndProcessing ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
	@FindBy(xpath = "//*[@mmf_name='MMF_PA036M_PAYROLL_TYPE']") private WebElement PayrollType;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA037M_PAYROLL_CYCLE']") private WebElement PayrollCycle;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA007M_PAY_PERIOD']") private WebElement PayrollPeriod;
	@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement Regular;
	@FindBy(xpath = "//*[@mmf_name='MMF_3']") private WebElement RandS;
	@FindBy(xpath = "//*[@mmf_name='MMF_2']") private WebElement Specials;
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Continue;
	
	
	public void setPayrollType(String strPayrollType) throws InterruptedException {
		PayrollType.sendKeys ( strPayrollType );
		Thread.sleep ( 1000 );
	}
	
	public void setPayrollCycle(String strPayrollCycle) throws InterruptedException {
		PayrollCycle.sendKeys ( strPayrollCycle );
		Thread.sleep ( 1000 );
	}
	
	public void setPayrollPeriod(String strPayrollPeriod) throws InterruptedException {
		PayrollPeriod.sendKeys ( strPayrollPeriod );
		Thread.sleep ( 1000 );
	}
	
	public void clickRegular() throws InterruptedException {
		Regular.click ();
		Thread.sleep ( 2000 );
	}
	
	public void clickRandS() throws InterruptedException{
		RandS.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickSpecials() throws InterruptedException {
		Specials.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickContinue() throws InterruptedException {
		Continue.click ();
		Thread.sleep ( 1000 );
	}
}
