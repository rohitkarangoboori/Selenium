
package Runner;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features="src/test/java/Features", 
glue="Stepdefinition",
plugin = {"pretty","com.vimalselvam.cucumber.listener.ExtentCucumberFormatter:target/cucumber-reports/ExtendedReport.html","junit:target/cucumber-reports/Cucumber.xml","html:target/cucumber-html-reports","json:target/cucumber-reports/cucumber.json","html:target/Cucumber-JVM-report"},
monochrome =true //display the console output in a proper readable format
,strict=true //it will check if any step is not defined in step definition file
,dryRun = false
,tags = {"@Smoke"}
//,tags = {"@Payroll,@PayModel,@SpecialCheckPayroll,@RegularEarnings,@EarningsGeneration,@DirectDeposit,@SalaryVariance,@GenMiscEarnings,@RestorePayroll,@PeriodEnd,@W2Processing,@PayrollPA, @W2WorkFile,@CombEarnDed,@QuarterlyReport"}
// ,tags = {"@PATC01, @PATC02, @PATC03, @PATC04, @PATC05, @PATC06, @PATC07, @PATC08, @PATC09, @PATC10, @PATC11, @PATC12, @PATC14,@PATC15,@PATC16, @PATC17,@PATC18, @PATC19, @PATC20, @PATC21,@PATC22,@PATC23, @PATC24, @PATC25, @PATC26,@PATC27, @PATC28, @PATC29, @PATC30, @PATC31,@PATC32, @PATC33,@PATC34,@PATC35,@PATC36,@PATC37,@PATC38,@PATC39,@PATC40,@PATC41,@PATC42,@PATC43,@PATC44,@PATC45,@PATC46,@PATC47,@PATC48 ,@PATC49,@PATC50,@PATC51,@PATC52,@PATC53,@PATC54,@PATC55,@PATC56,@PATC57,@PATC58,@PATC59,@PATC60,@PATC61,@PATC62,@PATC63,@PATC64,@PATC65,@PATC66,@PATC67,@PATC68,@PATC69,@PATC70,@PATC71,@PATC72,@PATC73,@PATC74,@PATC75,@PATC76,@PATC77,@PATC78,@PATC79,@PATC80,@PATC81,@PATC82,@PATC83"}
)
        


public class Testrunner {
   
    
}