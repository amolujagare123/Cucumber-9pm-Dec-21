package stepdefinition;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.chrome.ChromeDriver;

public class SampleSd {
    @Given("^I am on login page of billing$")
    public void i_am_on_login_page_of_billing() throws Throwable {

        System.out.println("I am on login page");
    }

    @When("^I enter correct username and correct password on billing$")
    public void i_enter_correct_username_and_correct_password_on_billing() throws Throwable {
        System.out.println("I enter correct username and correct password");

    }

    @Then("^I should land on dashboard$")
    public void i_should_land_on_dashboard() throws Throwable {

        System.out.println("I should land on home page");
    }

    @And("^I click on login button of billing page$")
    public void i_click_on_login_button_of_billing_page() throws Throwable {
        System.out.println("I click on login button");

    }

    @When("I enter incorrect username and incorrect password on billing")
    public void iEnterIncorrectUsernameAndIncorrectPasswordOnBilling() {

        System.out.println("I enter incorrect username and incorrect password on billing");
    }

    @Then("I should get error message")
    public void iShouldGetErrorMessage() {

        System.out.println("I should get error message");

    }


    @When("I enter blank username and blank password on billing")
    public void iEnterBlankUsernameAndBlankPasswordOnBilling() {
        System.out.println("I enter blank username and blank password on billing");
    }

    @Then("I should get another error message")
    public void iShouldGetAnotherErrorMessage() {
        System.out.println("I should get another error message");
    }

    @When("I enter {string} and {string} on billing")
    public void iEnterAndOnBilling(String username, String password) {

        System.out.println("username:"+username);
        System.out.println("password:"+password);
    }
}
