package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class SalaryVarianceProcessing {


WebDriver driver;

public SalaryVarianceProcessing ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}
	
	@FindBy(xpath = "//*[@mmf_name='MMF_PA544_PAYROLL_TYPE']") private WebElement PayrollType;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA544_PAYROLL_CYCLE']") private WebElement PayrollCycle;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA544_EARNING_CODE']") private WebElement EarningsCode;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA544_DEPARTMENT']") private WebElement Department;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA544_SUBDEPT']") private WebElement SubDept;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA544_PAYROLL_PERIOD']") private WebElement PayrollPeriod;
	@FindBy(xpath = "//*[@mmf_name='MMF_PA544_GENERATION_DATE']") private WebElement EntryDate;
	@FindBy(xpath = "//*[@mmf_name='MMF_17']") private WebElement NontaxEarns;
	@FindBy(xpath = "//*[@mmf_name='MMF_5']") private WebElement SelectDept;
	@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement Accept;
	@FindBy(xpath = "//*[@mmf_name='MMF_A825_DEPT_SCROLL_FIELD_4']") private WebElement dept1;
	@FindBy(xpath = "//*[@mmf_name='MMF_A1465_DEPT_SCROLL_FIELD_4']") private WebElement dept2;
	
	public void setSelectDept() throws InterruptedException {
		SelectDept.click ();
		Thread.sleep ( 2000 );
		dept1.click ();
		dept2.click ();
		Thread.sleep ( 1000 );
		
	}
	
	public void setPayrollType( String strPayrollType) throws InterruptedException {
		PayrollType.sendKeys ( strPayrollType );
		Thread.sleep ( 1000 );
	}
	
	public void setPayrollCycle(String strPayrollCycle) throws InterruptedException {
		PayrollCycle.sendKeys ( strPayrollCycle );
		Thread.sleep ( 1000 );
	}
	
	public void setEarningsCode(String strEarningsCode) throws InterruptedException {
		EarningsCode.sendKeys ( strEarningsCode );
		Thread.sleep ( 1000 );
	}
	
	public void setDepartment( String strDepartment ) throws InterruptedException {
		Department.sendKeys ( strDepartment );
		Thread.sleep ( 1000 );
		
	}
	public void setSubDept( String strSubdept) throws InterruptedException {
		SubDept.sendKeys ( strSubdept );
		Thread.sleep ( 1000 );
	}
	
	public void setPayrollPeriod(String strPayrollPeriod) throws InterruptedException {
		PayrollPeriod.sendKeys ( strPayrollPeriod );
		Thread.sleep ( 1000 );
	}
	
	public void setEntryDate(String strEntryDate) throws InterruptedException {
		EntryDate.sendKeys ( strEntryDate );
		Thread.sleep ( 1000 );
	}
	
	public void clickaccept() throws InterruptedException {
		Accept.click ();
		Thread.sleep ( 1000 );
	}
 
}
