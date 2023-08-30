package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.text.SimpleDateFormat;
import java.util.Date;

public class T4Processing {


WebDriver driver;
Actions act;
String r;
public T4Processing ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
	
}

	@FindBy(xpath = "//*[@name='arrow6']") private WebElement Selectoption;
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Accept;
	@FindBy(xpath = "//*[@mmf_name='MMF_T4_CHECKLIST_ONLY_FLAG']") private WebElement Checklist;
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement FileCreation;
	@FindBy(xpath = "//*[@mmf_name='MMF_3']") private WebElement AllModified;
	@FindBy(xpath = "//*[@mmf_name='MMF_PASS_EI_EARN_MAX']"	) private WebElement MaxEIEarnings;
	@FindBy(xpath = "//*[@mmf_name='MMF_6']") private WebElement SummaryReport;
	@FindBy(xpath = "//*[@id='tabName2']") private WebElement Changetab;
	@FindBy(xpath = "//*[@mmf_name='MMF_Z1_EMPL_NO']") private WebElement Emplno;
	@FindBy(xpath = "//*[@mmf_name='MMF_Z1_FORM_NO']") private WebElement Replacementno;
	@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement AmendmentCDN;
	@FindBy(xpath = "//*[@mmf_name='MMF_4']") private WebElement AmendmentModified;
	@FindBy(xpath = "//*[@mmf_name='MMF_13']") private WebElement PrintParameter;
	@FindBy(xpath = "//*[@mmf_name='MMF_2']") private WebElement DuplicateTax;
	@FindBy(xpath = "//*[@mmf_name='MMF_5']") private WebElement DupModifiedTax;
	@FindBy(xpath = "//*[@mmf_name='MMF_6']") private WebElement Search;
	@FindBy(xpath = "//*[@name='arrow7']") private WebElement Searchoption;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA935T_UIC_EARN']") private WebElement EIWages;
	@FindBy(xpath = "//*[@mmf_name='MMF_9']") private WebElement Modify;
	@FindBy(xpath = "//*[@mmf_name='MMF_T4_YEAR']") private WebElement Year;
	@FindBy(xpath = "//*[@mmf_name='MMF_FILE_NAME']") private WebElement Filename;
	@FindBy(xpath = "//*[@mmf_name='MMF_TRANSMITTER_ID']") private WebElement Transmitter;
	@FindBy(xpath = "//*[@mmf_name='MMF_SCRN_EMAIL_ADDR']") private WebElement Email;
	@FindBy(xpath = "//*[@mmf_name='MMF_EMPLOYER_ID']") private WebElement Employer;
	@FindBy(xpath = "//*[@mmf_name='MMF_FILE_LIBRARY']") private WebElement Library;
	@FindBy(xpath = "//*[@mmf_name='MMF_FILE_VOLUME']") private WebElement Volume;


	public void setVolume(String strVolume) throws InterruptedException {
		Actions act =new Actions ( driver );
		act.doubleClick (Volume).perform ();
		Thread.sleep ( 1000 );
		Volume.sendKeys ( strVolume );
		Thread.sleep ( 1000 );
	}

	public void setLibrary(String strLibrary) throws InterruptedException {
		Actions act =new Actions ( driver );
		act.doubleClick (Library).perform ();
		
		Thread.sleep ( 1000 );
		Library.sendKeys ( strLibrary );
		Thread.sleep ( 1000 );
	}
	
	public void setEmployer(String strEmployerID) throws InterruptedException {
		Actions act =new Actions ( driver );
		act.doubleClick (Employer).perform ();
		Thread.sleep ( 1000 );
		Employer.sendKeys ( strEmployerID );
		Thread.sleep ( 1000 );
	}

	public void setEmail(String strEmailaddress) throws InterruptedException {
		Actions act =new Actions ( driver );
		act.contextClick (Email).perform ();
		Thread.sleep ( 1000 );
		Email.sendKeys ( strEmailaddress );
		Thread.sleep ( 1000 );
	}
	
	
	public void setTransmitter(String strTransmitterID) throws InterruptedException {
		Actions act =new Actions ( driver );
		act.doubleClick (Transmitter).perform ();
		Thread.sleep ( 1000 );
		Transmitter.sendKeys ( strTransmitterID );
		Thread.sleep ( 1000 );
	}
	
	public void setFilename(String strFilename) throws InterruptedException {
		Actions act =new Actions ( driver );
		act.doubleClick (Filename).perform ();
		Filename.sendKeys ( strFilename );
		Thread.sleep ( 1000 );
	}
	
	public void setYear(String strYear) throws InterruptedException {
		Actions act =new Actions ( driver );
		act.doubleClick (Year).perform ();
		Thread.sleep ( 1000 );
		act.sendKeys ( strYear );
		Thread.sleep ( 1000 );
		
	}
	
	public void clickModify() throws InterruptedException {
		Modify.click ();
		Thread.sleep ( 1000 );
	}
	
	public void setEIWages() throws InterruptedException {
		EIWages.click ();
		Thread.sleep ( 1000 );
		EIWages.sendKeys ( "10827" );
		Thread.sleep ( 1000 );
	}
	
	public void clickSearchOption() throws InterruptedException {
		Searchoption.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickSearch() throws InterruptedException {
		Search.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickDupModifiedTax() throws InterruptedException {
		DupModifiedTax.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickDuplicateTax() throws InterruptedException {
		DuplicateTax.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickPrintParameter() throws InterruptedException {
		PrintParameter.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickModifiedAmend() throws InterruptedException {
		AmendmentModified.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickAmendment() throws InterruptedException {
		AmendmentCDN.click ();
		Thread.sleep ( 1000 );
	}
	
	public String setReplacementno() throws InterruptedException {
		String repl = new SimpleDateFormat ("ddMMyyhhmmss").format(new Date ());
		r = repl;
		Replacementno.sendKeys(repl);
		System.out.print(repl);
		return repl;
		
		}
	
	public void setEmplno(String strEmpl) throws InterruptedException {
		Emplno.click ();
		Thread.sleep ( 1000 );
		Emplno.sendKeys ( strEmpl );
		
	}
	public void clickChangetab() throws InterruptedException {
		Changetab.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickSummary() throws InterruptedException {
		SummaryReport.click ();
		Thread.sleep ( 1000 );
	}
	
	public void setMaxEIEarnings(String strEarnings) throws InterruptedException {
		MaxEIEarnings.click ();
		Thread.sleep ( 1000 );
		MaxEIEarnings.sendKeys ( strEarnings );
		Thread.sleep ( 1000 );
	}
	
	public void clickModified() throws InterruptedException {
		AllModified.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickFileCreation() throws InterruptedException {
		FileCreation.click ();
		Thread.sleep ( 2000 );
		//Alert simpleAlert = driver.switchTo().alert();
		//driver.switchTo().alert().accept ();
		//Actions act =new Actions ( driver );
		//act.perform ();
		//Thread.sleep ( 5000 );
		//simpleAlert.accept ();
		
	}
	
	public void clickSelectoption() throws InterruptedException {
		Selectoption.click ();
		Thread.sleep ( 1000 );
	}
	
	public void clickaccept() throws InterruptedException {
		Accept.click ();
		Thread.sleep ( 1000 );
	}

	public void clickChecklist() throws InterruptedException {
		Checklist.click ();
		Thread.sleep ( 1000 );
	}




}
