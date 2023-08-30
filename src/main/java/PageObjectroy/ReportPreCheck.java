package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class ReportPreCheck {

WebDriver driver;

public String inv;

public ReportPreCheck ( WebDriver driver) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
	
}

	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement GenerateReport;
	@FindBy(xpath = "//*[@mmf_name='MMF_17']") private WebElement ExcelReport;
	
	public void clickgeneratereport() throws InterruptedException {
		Thread.sleep (1000);
		GenerateReport.click ();
		Thread.sleep (1000);
	}

	public void clickexcelreport() throws InterruptedException {
		ExcelReport.click ();
		Thread.sleep (1000);
	}


}
