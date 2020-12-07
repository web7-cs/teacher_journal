Feature: User profile

  In order to allow users to log in and maintain their account information, I need their user profiles.

  Scenario: Sign up

    Given I am a new user
    When I visit the main page
    Then I should see a Sign up link
    When I click the sign up link
    Then I should see a signup form
    When I fill in the signup form
    Then I should be signed up

   Scenario: Log in

    Given I am an existing user
    When I visit the main page
    Then I should see a Log in form
    When I fill in the login form
    Then I should be logged in

