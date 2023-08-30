package PageObjectroy;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class SelectInvoice {

    WebDriver driver;

    public SelectInvoice(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }
    @FindBy(xpath="//*[@mmf_name='MMF_COMPANY_KEY3_WRK']") private WebElement Fund;
    @FindBy(xpath="//*[@mmf_name='MMF_BRANCH_KEY3_WRK']") private WebElement Subfund;
    @FindBy(xpath="//*[@mmf_name='MMF_SUPPLIER_KEY3_WRK']") private WebElement Supplier;
    @FindBy(xpath = "//*[@mmf_name='MMF_INVOICE_KEY3_WRK']") private WebElement Invoicenumber;
    @FindBy(xpath="//*[@title='Accept ']") private WebElement accept;
    @FindBy(xpath = "//*[@id='messageLine']") private WebElement Messagebar;

    public String getMessage(){
    return Messagebar.getAttribute("value").trim();
}

        public void strfund(String strfund){
        Fund.click();
        Fund.sendKeys(strfund);
    }
    public void strsubfund(String strsubfund){
        Subfund.click();
        Subfund.sendKeys(strsubfund);
    }
    public void Supplier(String strSupplier){
        Supplier.sendKeys(strSupplier);
    }

    public void clickaccept(){
        accept.click();

    }

}