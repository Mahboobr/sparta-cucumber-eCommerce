# Sparta-Cucumber-eCommerce

## Aim

The aim of this task was to test the DemoQA Store website using Cucumber.

## How to install
Run the command git clone with this ```git@github.com:Mahboobr/sparta-cucumber-eCommerce.git```

Open files and in the command line install ruby gems Selenium-webdriver, Capybara and Cucumber.

```gem install selenium-webdriver```

```gem install capybara```

```gem install cucumber```



##### Running the software

Open the program, and within the console while in the Sparta-Cucumber-eCommerce folder run the command `cucumber` to see the tests running. By default this program uses the Chrome web browser.
To change this, follow this path: `/sparta-cucumber-eCommerce/features/support/env.rb`.
On line 6, the :chrome can be changed to a different browser.

There is a report detailing the tests and whether they have passed within the reports folder. It is in a HTML format. To change to another such as JSON run: `cucumber -f json -o reports/test_json.json` which will create a JSON file with the name 'test_json'.

The tests are within the step_definitions folder. It is here where there are account details that are being into methods specific to each page on the site.

##### Challenges
One of the biggest challenges I faced during this project was to create a temporary email and use that to register on the site. The problem I had was that I could not save the email generated on one site and input that into the email field on another site. The code for this is on the branch labelled "register" that hasn't been included on the dev branch.

Another challenge was when I targeted elements on a page and they had the same values, I could not distinguish between them and could only target the first instance of it on the page.
