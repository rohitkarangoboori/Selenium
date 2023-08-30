package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

public class CheckIssuetype {
WebDriver driver;

public CheckIssuetype ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}


}
