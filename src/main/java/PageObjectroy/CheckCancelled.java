package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

public class CheckCancelled {

WebDriver driver;

public CheckCancelled ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
}
