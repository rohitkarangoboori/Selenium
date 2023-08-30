package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class EarningsEditListMLA {

WebDriver driver;

public EarningsEditListMLA ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
	@FindBy(xpath = "//*[@mmf_name='MMF_SCRN_START_DATE']") private WebElement StartDate;
	@FindBy(xpath = "//*[@mmf_name='MMF_SCRN_END_DATE']") private WebElement EndDate;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA054M_BATCH']") private WebElement MLABatch;
	@FindBy(xpath = "//*[@mmf_name='MMF_10']") private WebElement PAEmail;
	@FindBy(xpath = "//*[@mmf_name='MMF_7']") private WebElement EditList;
	@FindBy(xpath = "//*[@mmf_name='MMF_9']") private WebElement MLASubmit;
	@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement Retrieve;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA054M_PERIOD']") private WebElement Periodpay;
	
	
	public void setPeriodpay(String strperiodpay) throws InterruptedException {
		Periodpay.sendKeys (strperiodpay );
		Thread.sleep ( 1000 );
	}
	
	public void clickBatch() throws InterruptedException {
		MLABatch.click ();
		Thread.sleep ( 1000 );
	}
	public void clickRetrieve() throws InterruptedException {
		Retrieve.click ();
		Thread.sleep ( 1000 );
	}
	
	public void setStartDate(String strstartdate) throws InterruptedException {
		StartDate.sendKeys ( strstartdate );
		Thread.sleep ( 1000 );
	}
	
	public void setEndDate(String strenddate) throws InterruptedException {
		EndDate.sendKeys ( strenddate );
		Thread.sleep ( 1000 );
	}
	
	public void clickEditList() throws InterruptedException {
		EditList.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickMLASubmit() throws InterruptedException {
		MLASubmit.click ();
		Thread.sleep ( 1000 );
	}
	
	
}
