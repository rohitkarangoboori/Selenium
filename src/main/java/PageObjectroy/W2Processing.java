package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class W2Processing {


WebDriver driver;

public W2Processing ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Accept;
	@FindBy(xpath = "//*[@mmf_name='MMF_13']") private WebElement PrintParameter;
	@FindBy(xpath = "//*[@mmf_name='MMF_FILE_SELECT']") private WebElement SelectFile;
	@FindBy(xpath = "//*[@title='next']") private WebElement Next;
	@FindBy(xpath = "//*[@id='tabName2']") private WebElement SwitchTab;
	@FindBy(xpath = "//*[@mmf_name='MMF_9']") private WebElement Edit;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA930T_MEDICARE_TAX']") private WebElement MedTax;
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Save;
	@FindBy(xpath = "//*[@mmf_name='MMF_LASER_FORMS_SELECT']") private WebElement PrintForm;
	
	public WebElement DDPrintForm(){
		return PrintForm;
	}
	
	public void clickSave() throws InterruptedException {
		Save.click ();
		Thread.sleep ( 2000 );
	}
	
	public void setMedTax(String strMedTax)  throws InterruptedException {
		MedTax.click ();
		Thread.sleep ( 1000 );
		MedTax.sendKeys ( strMedTax );
		Thread.sleep ( 1000 );
		
	}
	
	
	public void clickEdit() throws InterruptedException {
		Edit.click ();
		Thread.sleep ( 1000 );
	}
	
	public void setSwitchTab() throws InterruptedException {
		SwitchTab.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickNext() throws InterruptedException {
		Next.click ();
		Thread.sleep ( 1000 );
	}
	
	public WebElement DDselectFile() throws InterruptedException {
		SelectFile.click ();
		return SelectFile;
	}
	
	public void clickParameter() throws InterruptedException {
	PrintParameter.click ();
	Thread.sleep ( 1000 );
}

	public void clickAccept() throws InterruptedException {
	Accept.click ();
	Thread.sleep ( 1000 );
}





}
