package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class CheckDuplicatetype {

WebDriver driver;

public CheckDuplicatetype ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
@FindBy(xpath = "//*[@id='SCREEN_CHQ_DATE']") private WebElement Checkdate;

public void getchkdate(String strcheckdate) throws InterruptedException {
	Checkdate.click ();
	Thread.sleep ( 2000 );
	Checkdate.sendKeys ( strcheckdate );
	Thread.sleep ( 1000 );
}

}
