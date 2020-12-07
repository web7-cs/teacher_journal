Given('I am an admin') do
  @admin = FactoryBot.build :admin
end

When('I visit the admin page') do
  visit '/admin/login'
end

Then('I should see admin log in form') do
	save_and_open_page
end

When("I fill in the admin login form") do
  save_and_open_page
end

Then("I admin should be logged in") do
  expect(page).to have_content " "
end