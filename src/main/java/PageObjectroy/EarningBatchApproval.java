package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class EarningBatchApproval {

WebDriver driver;

public EarningBatchApproval ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement Retrieve;
@FindBy(xpath = "//*[@mmf_name='MMF_7']") private WebElement Approval;
@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement BatchApproval;
@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement DonotApprove;
@FindBy(xpath = "//*[@mmf_name='MMF_9']") private WebElement RangeApproval;
@FindBy(xpath = "//*[@mmf_name='MMF_8']") private WebElement Unlockgldate;
@FindBy(xpath = "//*[@mmf_name='MMF_SCRN_GL_POSTING_DATE']") private WebElement GLDate;
@FindBy(xpath = "//*[@mmf_name='MMF_PA324Z4_PAYROLL_TYPE']") private WebElement Payrolltype;


public void sendpayrolltype( String payrolltype) throws InterruptedException {
	Payrolltype.click ();
	Thread.sleep ( 1000 );
	Payrolltype.sendKeys ( payrolltype );
	Thread.sleep ( 1000 );
}

public void strgldate(String strdate) throws InterruptedException {
	GLDate.click ();
	Thread.sleep ( 1000 );
	GLDate.sendKeys ( strdate );
	Thread.sleep ( 1000 );
}

public void clickunlockgldate() throws InterruptedException {
	Unlockgldate.click ();
	Thread.sleep ( 1000 );
}

public void clickrangeapproval() throws InterruptedException {
	RangeApproval.click ();
	Thread.sleep ( 1000 );
}

public void clickunapprovedbatch() throws InterruptedException {
	DonotApprove.click ();
	Thread.sleep ( 1000 );
}

public void clickretrieve() throws InterruptedException {
	Retrieve.click ();
	Thread.sleep ( 1000 );
}

public void clickapproval() throws InterruptedException {
	Approval.click ();
	Thread.sleep ( 1000 );
}

public void clickbatchapproval() throws InterruptedException {
	BatchApproval.click ();
	Thread.sleep ( 1000 );
}


}
