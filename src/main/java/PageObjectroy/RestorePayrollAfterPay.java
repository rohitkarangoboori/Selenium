package PageObjectroy;

import cucumber.api.Scenario;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class RestorePayrollAfterPay {


WebDriver driver;
Scenario scn;

Actions act;
public RestorePayrollAfterPay ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement ContinueRestore;
	@FindBy(xpath = "//*[@mmf_name='MMF_WS_PAYROLL_TYPE']") private WebElement PayrollType;
	@FindBy(xpath = "//*[@mmf_name='MMF_WS_PAYROLL_CYCLE']") private WebElement PayrollCycle;
	@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement Continue;
	
	public void clickrestore() throws InterruptedException {
		ContinueRestore.click ();
		Thread.sleep ( 1000 );
	}
	
	public void setPayrollType(String strPayrolltype) throws InterruptedException {
		PayrollType.sendKeys ( strPayrolltype );
		Thread.sleep ( 1000 );
	}
	
	public void setPayrollCycle(String strPayrollCycle) throws InterruptedException {
		PayrollCycle.sendKeys ( strPayrollCycle );
		Thread.sleep ( 1000 );
	}
	
	public void clickContinue() throws InterruptedException {
		Continue.click ();
		Thread.sleep ( 1000 );
	}
	
}
