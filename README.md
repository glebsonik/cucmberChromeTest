cucumberChromeTest is a set of some tests of Google Account signing in and signing up
for Google Chrome browser version 74.0.3729.131

In these tests are used Ruby, Cucumber, Capybara and Selenium WebDriver.

To run tests properly chromedriver is installed in directory Additional_drivers.
If you use another version of Google Chrome you should reinstall chromedriver that suits
your Google Chrome version.

All test features are declared according to Gherkin notation in files with .feature 
extension. Step definitions are stored in corresponding directory.
Due to Given block almost same for both tests its step definition has described only once 
in features/step_definitions/test_sign_up_steps.rb . 