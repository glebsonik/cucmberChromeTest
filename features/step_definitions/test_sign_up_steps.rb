
Given("User has already opened {string}") do |test_page|
  visit test_page
end

Then("Page content should be {string}") do |expected_content|
  expect(page).to have_content (expected_content)
end

When("I fill First Name input box with {string}") do |first_name|
  find("//input[@id='firstName']").set(first_name)
end

And("I fill Last Name input box with {string}") do |last_name|
  find("//input[@id='lastName']").set(last_name)
end

And("I fill Username input box with {string}") do |username|
  find("//input[@id='username']").set(username)
end

And("I fill Password input box with {string}") do |password|
  find("//div[@id='passwd']//input").set(password)
end

And("I fill Password confirmation input box with {string}") do |password|
  find("//div[@id='confirm-passwd']//input").set(password)
end

Then("Click button \"Далее\"") do
  find("//*[@id='accountDetailsNext']").click()
end
