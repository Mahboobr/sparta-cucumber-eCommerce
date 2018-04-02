Feature: DemoQA Login

  Scenario: Can login into site and add a product to the basket, checkout and pay for item.
    Given I access the DemoQA home page
    And I select the click the my account button
    And I select input correct username and password, and then login
    And I select a blog post
    And I add that item to my cart
    And I click the basket icon
    And I click the continue button
    And I fill out shipping details
    When I click the purchase button
    Then I receive confirmation that order is pending

  Scenario: From the hompage, without logging in, I can view a product, add it to the basket, checkout and pay for it.
    Given I access the DemoQA home page
    And I click one of the items on show
    And I click the image of the item to see a larger image
    And I add that item to my cart
    And I click the basket icon
    And I change the quantity of the item
    And I click the continue button
    And I select input correct username and password, and then login
    And I change the shipping address
    When I click the purchase button
    Then I receive confirmation that order is pending
