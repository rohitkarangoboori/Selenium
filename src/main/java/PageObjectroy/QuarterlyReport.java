package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class QuarterlyReport {

WebDriver driver;
Actions act;

public QuarterlyReport ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}

	@FindBy(xpath = "//*[@mmf_name='MMF_SCR_REPORT_TYPE']") private WebElement GenReport;
	@FindBy(xpath = "//*[@mmf_name='MMF_17']") private WebElement IncEarnings;
	@FindBy(xpath = "//*[@mmf_name='MMF_A504_EARN_SELECTION_FLAG']") private WebElement Regular;
	@FindBy(xpath = "//*[@mmf_name='MMF_A584_EARN_SELECTION_FLAG']") private WebElement Overtime;
	@FindBy(xpath = "//*[@mmf_name='MMF_A664_EARN_SELECTION_FLAG']") private WebElement Vacation;
	@FindBy(xpath = "//*[@mmf_name='MMF_A744_EARN_SELECTION_FLAG']") private WebElement FMLA;
	@FindBy(xpath = "//*[@mmf_name='MMF_A824_EARN_SELECTION_FLAG']") private WebElement Sick;
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Accept;
	@FindBy(xpath = "//*[@mmf_name='MMF_SCR_REPORT_YEAR']") private WebElement ReportPeriod;
	@FindBy(xpath = "//*[@mmf_name='MMF_SCR_FICA_WAGE_MAXIMUM']") private WebElement FICAWage;
	@FindBy(xpath = "//*[@mmf_name='MMF_SCR_MEDICARE_WAGE_MAXIMUM']") private WebElement MedWage;
	@FindBy(xpath = "//*[@mmf_name='MMF_SCR_5A_FACTOR']") private WebElement FWage;
	@FindBy(xpath = "//*[@mmf_name='MMF_SCR_5AI_FACTOR']") private WebElement PWage;
	@FindBy(xpath = "//*[@mmf_name='MMF_SCR_5AII_FACTOR']") private WebElement QWage;
	@FindBy(xpath = "//*[@mmf_name='MMF_SCR_5B_FACTOR']") private WebElement TWage;
	@FindBy(xpath = "//*[@mmf_name='MMF_SCR_5C_FACTOR']") private WebElement MWage;
	@FindBy(xpath = "//*[@mmf_name='MMF_SCR_5D_FACTOR']") private WebElement NWage;
	@FindBy(xpath = "//*[@mmf_name='MMF_SCR_STATE']") private WebElement State;
	
	public void setState(String strState) throws InterruptedException {
		act =new Actions ( driver );
		act.clickAndHold (State).perform ();
		act.doubleClick (State).perform ();
		Thread.sleep ( 1000 );
		State.sendKeys ( strState );
		Thread.sleep ( 1000 );
	}
	
	public void clickIncEarnings() throws InterruptedException {
		IncEarnings.click ();
		Thread.sleep ( 1000 );
	}
	
	public void setRegular(String strRegular) throws InterruptedException {
		Regular.sendKeys ( strRegular );
		Thread.sleep ( 1000 );
	}
	
	public void setOvertime(String strOvertime) throws InterruptedException {
		Overtime.sendKeys ( strOvertime );
		Thread.sleep ( 1000 );
	}
	
	public void setVacation(String strVacation) throws InterruptedException {
		Vacation.sendKeys ( strVacation );
		Thread.sleep ( 1000 );
	}
	
	public void setFMLA(String strFMLA) throws InterruptedException {
		FMLA.sendKeys ( strFMLA );
		Thread.sleep ( 1000 );
	}
	
	public void setSick(String strSick) throws InterruptedException {
		Sick.sendKeys ( strSick );
		Thread.sleep ( 1000 );
	}
	public void setAccept() throws InterruptedException {
		Accept.click ();
		Thread.sleep ( 1000 );
	}
	public WebElement setGenerationReport(){
		return GenReport;
	}
	public void setReportPeriod( String strPeriod) throws InterruptedException {
		act =new Actions ( driver );
		act.doubleClick (ReportPeriod).perform ();
		Thread.sleep ( 1000 );
		ReportPeriod.sendKeys ( strPeriod );
		Thread.sleep ( 1000 );
	}
	
	public void setFICAWage(String strFICAWage) throws InterruptedException {
		act =new Actions ( driver );
		act.doubleClick (FICAWage).perform ();
		Thread.sleep ( 1000 );
		FICAWage.sendKeys ( strFICAWage );
		Thread.sleep ( 1000 );
	}
	
	public void setMedWage(String strMedWage) throws InterruptedException {
		act =new Actions ( driver );
		act.doubleClick (MedWage).perform ();
		Thread.sleep ( 1000 );
		MedWage.sendKeys ( strMedWage );
		Thread.sleep ( 1000 );
	}
	
	public void setFWage(String strFWage) throws InterruptedException {
		act =new Actions ( driver );
		act.clickAndHold (FWage).perform ();
		act.doubleClick (FWage).perform ();
		Thread.sleep ( 1000 );
		FWage.sendKeys ( strFWage );
		Thread.sleep ( 1000 );
	}
	public void setPWage(String strPWage) throws InterruptedException {
		act =new Actions ( driver );
		act.clickAndHold (PWage).perform ();
		act.doubleClick (PWage).perform ();
		Thread.sleep ( 1000 );
		PWage.sendKeys ( strPWage );
		Thread.sleep ( 1000 );
	}
	public void setQWage(String strQWage) throws InterruptedException {
		act =new Actions ( driver );
		act.clickAndHold (QWage).perform ();
		act.doubleClick (QWage).perform ();
		Thread.sleep ( 1000 );
		QWage.sendKeys ( strQWage );
		Thread.sleep ( 1000 );
	}
	public void setTWage(String strTWage) throws InterruptedException {
		act =new Actions ( driver );
		act.clickAndHold ( TWage ).perform ();
		act.doubleClick (TWage).perform ();
		Thread.sleep ( 1000 );
		TWage.sendKeys ( strTWage );
		Thread.sleep ( 1000 );
	}
	public void setMWage(String strMWage) throws InterruptedException {
		act =new Actions ( driver );
		act.clickAndHold ( MWage ).perform ();
		act.doubleClick (MWage).perform ();
		Thread.sleep ( 1000 );
		MWage.sendKeys ( strMWage );
		Thread.sleep ( 1000 );
	}
	
	public void setNWage(String strNWage) throws InterruptedException {
		act =new Actions ( driver );
		act.clickAndHold ( NWage ).perform ();
		act.doubleClick (NWage).perform ();
		Thread.sleep ( 1000 );
		NWage.sendKeys ( strNWage );
		Thread.sleep ( 1000 );
	}
	
}
