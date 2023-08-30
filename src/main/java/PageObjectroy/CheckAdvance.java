package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class CheckAdvance {
WebDriver driver;

public CheckAdvance ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
	@FindBy(xpath = "//*[@mmf_name='MMF_ADVANCE_CHQ_AMOUNT']") private WebElement Amount;
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Continue;

public void clickAmt() {Amount.click();}

public void clickAmount(String stramount ) throws InterruptedException {
	Amount.sendKeys ( stramount );
	Thread.sleep ( 1000 );
	
}
	public void clickContinue() throws InterruptedException {
		Continue.click ();
		Thread.sleep ( 1000 );
	}
	
}







