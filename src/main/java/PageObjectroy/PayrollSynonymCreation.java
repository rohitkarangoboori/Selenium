package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class PayrollSynonymCreation {

WebDriver driver;

public PayrollSynonymCreation ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
	@FindBy(xpath = "//*[@mmf_name='MMF_WK_SYNONYM_YEAR']") private WebElement Synonymyear;
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement accept;


public void setSynonymyear(String strYear) throws InterruptedException {
	Synonymyear.sendKeys ( strYear );
	Thread.sleep ( 1000 );
}

public void clickaccept() throws InterruptedException {
	accept.click ();
	Thread.sleep ( 1000 );
}

}

