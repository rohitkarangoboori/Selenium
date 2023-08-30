package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class EmployeeInquiry {


WebDriver driver;


public EmployeeInquiry ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
	@FindBy(xpath = "//*[@mmf_name='MMF_SCREEN_EMPL_NO']") private WebElement Employeenumber;
	@FindBy(xpath = "//*[@mmf_name='MMF_24']") private WebElement BankData;
	@FindBy(xpath = "//*[@mmf_name='MMF_9']") private WebElement DedCodeSmry;
	@FindBy(xpath = "//*[@mmf_name='MMF_14']") private WebElement DedCheck;
	@FindBy(xpath = "//*[@mmf_name='MMF_13']") private WebElement DedCode;
	@FindBy(xpath = "//*[@mmf_name='MMF_3']") private WebElement Deddata;
	@FindBy(xpath = "//*[@mmf_name='MMF_23']") private WebElement Distributiondata;
	@FindBy(xpath = "//*[@mmf_name='MMF_8']") private WebElement EarnCodeSmry;
	@FindBy(xpath = "//*[@mmf_name='MMF_12']") private WebElement EarnDetlCheck;
	@FindBy(xpath = "//*[@mmf_name='MMF_11']") private WebElement EarnDetlCode;
	@FindBy(xpath = "//*[@mmf_name='MMF_17']") private WebElement FindName;
	@FindBy(xpath = "//*[@mmf_name='MMF_18']") private WebElement FindOccCode;
	@FindBy(xpath = "//*[@mmf_name='MMF_19']") private WebElement FindPcn;
	@FindBy(xpath = "//*[@mmf_name='MMF_26']") private WebElement FindSsn;
	@FindBy(xpath = "//*[@mmf_name='MMF_20']") private WebElement Findtypecycle;
	@FindBy(xpath = "//*[@mmf_name='MMF_22']") private WebElement Findtypegroup;
	@FindBy(xpath = "//*[@mmf_name='MMF_21']") private WebElement Findtypeunion;
	@FindBy(xpath = "//*[@mmf_name='MMF_27']") private WebElement Multiplejob;
	@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement Personaldata;
	@FindBy(xpath = "//*[@mmf_name='MMF_25']") private WebElement YtdAmounts;
	@FindBy(xpath = "//*[@mmf_name='MMF_10']") private WebElement YtdCheckSmry;
	@FindBy(xpath = "//*[@mmf_name='MMF_28']") private WebElement Options;
	@FindBy(xpath = "//*[@name='arrow8']") private WebElement bankdesc;
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement bankdetails;
	
public void sendEmpnum(String strempnum) throws InterruptedException {
	Employeenumber.sendKeys ( strempnum );
	Thread.sleep ( 1000 );
}

public void clickBankdata() throws InterruptedException {
	BankData.click ();
	Thread.sleep ( 1000 );
}

public void getbankdesc() throws InterruptedException {
	bankdesc.click ();
	Thread.sleep ( 1000 );
	
}

public void clickbankdetails() throws InterruptedException {
	bankdetails.click ();
	Thread.sleep (1000 );
}

public void clickDedcodeSmry() throws InterruptedException {
	DedCodeSmry.click ();
	Thread.sleep ( 1000 );
}

public void clickDedcheck() throws InterruptedException {
	DedCheck.click ();
	Thread.sleep ( 1000 );
}

public void clickDedCode() throws InterruptedException {
	DedCode.click ();
	Thread.sleep ( 1000 );
}

public void clickDeddata() throws InterruptedException {
	Deddata.click ();
	Thread.sleep ( 1000 );
}
public void clickDistributiondata() throws InterruptedException {
	Distributiondata.click ();
	Thread.sleep ( 1000 );
}

public void clickEarncodeSmry() throws InterruptedException {
	EarnCodeSmry.click ();
	Thread.sleep ( 1000 );
}
public void clickEarndtlcheck() throws InterruptedException {
	EarnDetlCheck.click ();
	Thread.sleep ( 1000 );
}
public void clickEarndetlcode() throws InterruptedException {
	EarnDetlCode.click ();
	Thread.sleep ( 1000 );
}
public void clickFindname() throws InterruptedException {
	FindName.click ();
	Thread.sleep ( 1000 );
}
public void clickFindoccCode() throws InterruptedException {
	FindOccCode.click ();
	Thread.sleep ( 1000 );
}
public void clickFindPcn() throws InterruptedException {
	FindPcn.click ();
	Thread.sleep ( 1000 );
}
public void clickFindSsn() throws InterruptedException {
	FindSsn.click ();
	Thread.sleep ( 1000 );
}
public void clickFindtypecycle() throws InterruptedException {
	Findtypecycle.click ();
	Thread.sleep ( 1000 );
}
public void clickFindtypegroup() throws InterruptedException {
	Findtypegroup.click ();
	Thread.sleep ( 1000 );
}
public void clickFindtypeunion() throws InterruptedException {
	Findtypeunion.click ();
	Thread.sleep ( 1000 );
}
public void clickMultiplejob() throws InterruptedException {
	Multiplejob.click ();
	Thread.sleep ( 1000 );
}
public void clickPersonalData() throws InterruptedException {
	Personaldata.click ();
	Thread.sleep ( 1000 );
}
public void clickYtdamounts() throws InterruptedException {
	YtdAmounts.click ();
	Thread.sleep ( 1000 );
}
public void clickYtdchecksmry() throws InterruptedException {
	YtdCheckSmry.click ();
	Thread.sleep ( 1000 );
}
public void clickOptions() throws InterruptedException {
	Options.click ();
	Thread.sleep ( 1000 );
}


}
