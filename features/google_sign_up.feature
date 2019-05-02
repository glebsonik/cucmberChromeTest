Feature: Google account signing up
  As a User
  In order to sign un to Google system
  I want to fill the first page of Google signing up

  Scenario: Visited page content should be "Создайте аккаунт Google"
    Given User has already opened "https://accounts.google.com/signup"
    Then Page content should be "Создайте аккаунт Google"

   Scenario: Passing through the first page of Google signing up
     Given User has already opened "https://accounts.google.com/signup"
     When I fill First Name input box with "Test_Name_John"
     And I fill Last Name input box with "Test_LName_Brown"
     And I fill Username input box with "TestUsername785"
     And I fill Password input box with "123456987Ps"
     And I fill Password confirmation input box with "123456987Ps"
     Then Click button "Далее"
