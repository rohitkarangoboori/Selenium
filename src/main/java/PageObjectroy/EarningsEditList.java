package PageObjectroy;


import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class EarningsEditList {


WebDriver driver;

public EarningsEditList ( WebDriver driver ) {
	this.driver = driver;
	PageFactory.initElements ( driver , this );
}

@FindBy(xpath = "//*[@mmf_name='MMF_1']") private WebElement Display;
@FindBy(xpath = "//*[@mmf_name='MMF_7']") private WebElement EditList;
@FindBy(xpath = "//*[@mmf_name='MMF_00']") private WebElement GenerateReport;
@FindBy(xpath = "//*[@mmf_name='MMF_SCRN_PRINT_EMPL_TOT_SW']") private WebElement PETotals;
@FindBy(xpath = "//*[@mmf_name='MMF_SCRN_TE_BATCH_SORT_OPTION']") private WebElement Batchsort;


public WebElement clickbatchsort() throws InterruptedException {
	return Batchsort;
	
}

public void checkPETotals() throws InterruptedException {
	PETotals.click ();
	Thread.sleep ( 1000 );
}


public void retrievebatch() throws InterruptedException {
	Display.click ();
	Thread.sleep ( 1000 );
	
}
public void clickedit() throws InterruptedException {
	EditList.click ();
	Thread.sleep ( 1000 );
}

public void clickgeneratereport() throws InterruptedException {
	GenerateReport.click ();
	Thread.sleep ( 1000 );
}

}