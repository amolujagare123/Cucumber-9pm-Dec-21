
  Feature: all login scenarios

    @loginReal
    Scenario: to test the login functionality for valid input
      Given I am on login page
      When I enter correct username and correct password
      And I click on login button
      Then I should land on home page

    @login
    Scenario: to test the login functionality of billing application for valid input
      Given I am on login page of billing
    #  When I enter correct username and correct password on billing
      When I enter "admin" and "admin" on billing
      And I click on login button of billing page
      Then I should land on dashboard

    @login
    Scenario: to test the login functionality of billing application for invalid input
      Given I am on login page of billing
   #   When I enter incorrect username and incorrect password on billing
      When I enter "abc1" and "abc1" on billing
      And I click on login button of billing page
      Then I should get error message

    @login
    Scenario: to test the login functionality of billing application for blank input
      Given I am on login page of billing
    #  When I enter blank username and blank password on billing
      When I enter "" and "" on billing
      And I click on login button of billing page
      Then I should get another error message