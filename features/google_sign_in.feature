Feature: Google authorization with
  As a User
  In order to try to enter Google account
  I want to pass first page of authorization

  Scenario: Entered wrong number
    Given User has already opened "https://accounts.google.com/signin"
    When User enter a number "+380963959680"
    And Try to click button "Далее"
    Then Message about nonexistent account is appeared