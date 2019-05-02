
When("User enter a number {string}") do |wrong_number|
  find("//input[@id='identifierId']").set(wrong_number)
end

And("Try to click button \"Далее\"") do
  find("//div[@id='identifierNext']").click()
end

Then("Message about nonexistent account is appeared") do
  expect(page).to have_content /^Аккаунт Google не найден. Попробуйте ввести адрес электронной почты.$/
end