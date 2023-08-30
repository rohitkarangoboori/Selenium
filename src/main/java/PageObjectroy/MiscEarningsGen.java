package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class MiscEarningsGen {

WebDriver driver;

public MiscEarningsGen ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}

	@FindBy(xpath = "//*[@mmf_name='MMF_PA325_PAYROLL_TYPE']") private WebElement PayrollType;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA325_PAYROLL_CYCLE']") private WebElement PayrollCycle;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA325_PAY_PERIOD']") private WebElement PayPeriod;
	@FindBy(xpath = "//*[@mmf_name='MMF_2']") private WebElement SelectEarnings;
	@FindBy(xpath = "//*[@mmf_name='MMF_11']") private WebElement GenSelEarnings;
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement GenMiscEarnings;
	@FindBy(xpath = "//*[@mmf_name='MMF_A660_SELECTION_FIELD']") private WebElement Field;
	
	public void setPayrollType(String strPayrollType) throws InterruptedException {
		PayrollType.sendKeys ( strPayrollType );
		Thread.sleep ( 1000 );
	}
	
	public void setPayrollCycle(String strPayrollCycle) throws InterruptedException {
		PayrollCycle.sendKeys ( strPayrollCycle );
		Thread.sleep ( 1000 );
	}
	
	public void setPayPeriod(String strPayPeriod) throws InterruptedException {
		PayPeriod.sendKeys ( strPayPeriod );
		Thread.sleep ( 1000 );
	}
	public void clickSelectEarnings() throws InterruptedException {
		SelectEarnings.click ();
		Thread.sleep ( 2000 );
	}
	public void selectField() throws InterruptedException {
		Field.click ();
		Thread.sleep ( 1000 );
		
	}
	
	public void clickGenSelEarnings() throws InterruptedException {
		GenSelEarnings.click ();
		Thread.sleep ( 1000 );
	}
	public void clickGenMiscEarnings() throws InterruptedException {
		GenMiscEarnings.click ();
		Thread.sleep ( 1000 );
	}
	
	
}
