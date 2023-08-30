package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class CheckPrint {

WebDriver driver;

public String inv;

public CheckPrint(WebDriver driver) {
	this.driver = driver;
	PageFactory.initElements(driver, this);
	
}

@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Accept;
@FindBy(xpath = "//*[@mmf_name='MMF_11']") private WebElement Process;
@FindBy(xpath = "//*[@mmf_name='MMF_DATE_WRK2']") private WebElement CheckRunDate;
@FindBy(xpath = "//*[@id='ext-gen24']") private WebElement DDpayment;
@FindBy(xpath = "//*[@id='ext-gen4']") private WebElement date;
@FindBy(xpath = "//*[@id='ext-gen3']") private WebElement nextprocess;
@FindBy(xpath = "//*[@mmf_name='MMF_messageLine']") WebElement Messagebar;


public String getMessage(){
	return Messagebar.getAttribute("value").trim();
}

public void DDpayment() throws InterruptedException {
	Thread.sleep(1000);
	date.click();
	Thread.sleep(1000);
	DDpayment.click();
	Thread.sleep(1000);
	
}

public void setCheckRunDate() throws InterruptedException {
	Thread.sleep(1000);
	CheckRunDate.sendKeys("06-14-2021");
	Thread.sleep(1000);
}

public void Clickaccept() throws InterruptedException {
	Thread.sleep(1000);
	Accept.click();
	Thread.sleep(1000);
}

public void ClickProcess() throws InterruptedException {
	Thread.sleep ( 1000 );
	Process.click ( );
	Thread.sleep ( 1000 );
}
public void setNextprocess() throws InterruptedException {
	nextprocess.click();
	Thread.sleep(1000);
	
}




}