Feature: Admin profile

  In order to allow admin to log in and maintain the account , I need admin informations
	 
	 Scenario: Admin Log in

	    Given I am an admin
	    When I visit the admin page
	    Then I should see admin log in form
	    When I fill in the admin login form 
	    Then I admin should be logged in 
