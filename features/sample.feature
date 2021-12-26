
  Feature: all login scenarios

    Background: before all scenario
      Given browser is opened
      When url is entered

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

    @login @blank
    Scenario: to test the login functionality of billing application for blank input
      Given I am on login page of billing
    #  When I enter blank username and blank password on billing
      When I enter "" and "" on billing
      And I click on login button of billing page
      Then I should get another error message


      @userReg
      Scenario: to test the functionality of submit button
        Given I am on user registration page
        When I enter below data
        | rahul | amol@yahoo.com | 1898989 | mumbai |
        And I click on submit button
        Then user should be added


    @userReg2
    Scenario Outline: to test the functionality of submit button
      Given I am on user registration page
      When I enter <name> , <email> , <phone>
      And I click on submit button
      Then user should be added
      Examples:
        | name      | email               | phone |
        | amol      | amol@email.com      | 12345 |
        | balaji    | balaji@email.com    | 12345 |
        | ashish    | ashish@email.com    | 12345 |
        | yuvarani  | yuvarani@email.com  | 12345 |
        | Mithilesh | Mithilesh@email.com | 12345 |
        | nirmala   | nirmala@email.com   | 12345 |
