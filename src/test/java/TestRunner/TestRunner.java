package TestRunner;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = "features" ,
        glue = "stepdefinition",
tags = "@login" /*, dryRun = true*/
, plugin={"pretty","html:target/report.html"}
)

public class TestRunner {
}
