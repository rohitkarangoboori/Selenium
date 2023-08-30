package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class PayrollCheckPrint {

WebDriver driver;
public static String a;
public PayrollCheckPrint ( WebDriver driver) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
@FindBy(xpath = "//*[@mmf_name='MMF_PA036M_PAYROLL_TYPE']") private WebElement Ptype;
@FindBy(xpath = "//*[@mmf_name='MMF_PA037M_PAYROLL_CYCLE']") private WebElement pcycle;
@FindBy(xpath = "//*[@mmf_name='MMF_PA007M_PAY_PERIOD']") private WebElement pperiod;
@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement regular;
@FindBy(xpath = "//*[@mmf_name='MMF_3']") private WebElement advances;
@FindBy(xpath = "//*[@mmf_name='MMF_6']") private WebElement duplications;
@FindBy(xpath = "//*[@mmf_name='MMF_5']") private WebElement issued;
@FindBy(xpath = "//*[@mmf_name='MMF_2']") private WebElement manual;


public void getpaytype(String strptype) throws InterruptedException {
	Ptype.sendKeys ( strptype );
	Thread.sleep ( 1000 );
}

public void getpaycycle( String strpcycle) throws InterruptedException {
	pcycle.sendKeys ( strpcycle );
	Thread.sleep ( 1000 );
}

public void getpayperiod(String strpperiod) throws InterruptedException {
	pperiod.sendKeys ( strpperiod );
	Thread.sleep ( 1000 );
}
public void getregular() throws InterruptedException {
	regular.click ();
	Thread.sleep ( 1000 );
}
public void getadvances() throws InterruptedException {
	advances.click ();
	Thread.sleep ( 1000 );
}
public void getduplications() throws InterruptedException {
	duplications.click ();
	Thread.sleep ( 1000 );
}
public void getissued() throws InterruptedException {
	issued.click ();
	Thread.sleep ( 1000 );
}
public void getmanual() throws InterruptedException {
	manual.click ();
	Thread.sleep ( 1000 );
}



}
