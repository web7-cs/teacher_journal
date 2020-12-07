Given("I am a new user") do
  @user = FactoryBot.build :new_user
end

When("I visit the main page") do
  visit '/users/sign_in'
end

Then("I should see a Sign up link") do
  expect(page).to have_link('Sign up', href: new_user_registration_path)
end

When("I click the sign up link") do
  find_link('Sign up', href: new_user_registration_path).click
end

Then("I should see a signup form") do
  expect(page).to have_selector('form#new_user')
end

When("I fill in the signup form") do
  fill_in "Email", with: @user.email
  fill_in "Password", with: @user.password
  fill_in "Username", with: @user.username
  fill_in "Password confirmation", with: @user.password_confirmation

  click_button("Sign up")
end

Then("I should be signed up") do
  expect(page).to have_content "Welcome! You have signed up successfully"
end

# For second scenario

Given("I am an existing user") do
  @user = FactoryBot.create :existing_user
end

Then("I should see a Log in form") do
  expect(page).to have_selector('form#new_user')
end

When("I fill in the login form") do
  fill_in "Email", with: @user.email
  fill_in "Password", with: @user.password
  click_button("Log in")
end

Then("I should be logged in") do
  expect(page).to have_content "Find me in app/views/pages/index.html.erb"
end



