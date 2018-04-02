Given("I access the DemoQA home page") do
  demoqa_homepage.visit_home
  sleep 2
end

And("I select the click the my account button") do
  demoqa_homepage.my_account_click
  sleep 2
end

And("I select input correct username and password, and then login") do
  # demoqa_login.fill_username("mabs")
  # demoqa_login.fill_password("Test123456789")
  # demoqa_login.click_login
  # sleep 5
end

And("I select a blog post") do
  # demoqa_my_account.click_more_details
  # sleep 2
end


And("I add that item to my cart") do
  demoqa_item_page.click_add_to_cart
  sleep 2
end

And("I click the basket icon") do
  demoqa_item_page.go_to_checkout
  sleep 2
end

And("I click the continue button") do
  demoqa_checkout.continue_checkout
  sleep 2
end

And("I fill out shipping details") do
  sleep 2
  demoqa_shipping.current_country
  demoqa_shipping.current_county("Essex")
  demoqa_shipping.enter_email("test1@testing.com")
  demoqa_shipping.enter_first_name("Billy")
  demoqa_shipping.enter_last_name("Bob")
  demoqa_shipping.enter_address("123 Fake Street")
  demoqa_shipping.enter_city("London")
  demoqa_shipping.enter_county_second("Essex")
  demoqa_shipping.enter_post_code("IG1 2PJ")
  demoqa_shipping.enter_phone("07904586633")
  demoqa_shipping.check_same_as_billing
  sleep 2
end

When("I click the purchase button") do
  demoqa_shipping.click_purchase
  sleep 2
end

Then("I receive confirmation that order is pending") do
  expect(page).to have_css("p", :text => demoqa_confirm.confirm_text)
  demoqa_confirm.logout
  sleep 2
end

# Scenario 2
Given("I click one of the items on show") do
  # demoqa_homepage.slider_image_click
  # sleep 2
end

And("I click the image of the item to see a larger image") do
  demoqa_item_page.click_product_image
  sleep 1
  demoqa_item_page.close_product_image
  sleep 2
end

And("I change the quantity of the item") do
  demoqa_checkout.change_quantity_row_1(32)
  demoqa_checkout.update_quantity
  sleep 2
end

And("I change the shipping address") do
  demoqa_shipping.uncheck_same_as_billing
  demoqa_shipping.enter_new_first_name("Jiminy")
  demoqa_shipping.enter_new_last_name("Billybob")
  demoqa_shipping.enter_new_address("789 Real Avenue")
  demoqa_shipping.enter_new_city("Birmingham")
  demoqa_shipping.enter_new_county_second("Sussex")
  demoqa_shipping.enter_new_post_code("BM1 3JD")
end


# Scenario 3
Given("I click on the search bar and enter search criteria") do
  # demoqa_homepage.fill_search("phone")
end

And("I click your details, edit details, and save profile") do
  demoqa_my_account.go_to_your_details
  demoqa_shipping.enter_address("75 Fake Drive")
  demoqa_shipping.enter_city("London")
  demoqa_shipping.enter_county_second("Essex")
  demoqa_shipping.enter_post_code("E13 4AA")
  demoqa_my_account.save_profile
end

And("I hover over menu bar, and select a product category, change the view, and add to cart") do
  demoqa_my_account.hover_product_category
  demoqa_my_account.click_macbook_dropdown
  demoqa_my_account.change_view
  demoqa_item_page.click_add_to_cart
  sleep 2
end

And("I remove an item from the basket") do
  demoqa_checkout.continue_remove
end

And("I check the same as billing address checkbox") do
  demoqa_shipping.check_same_as_billing
end


# register email
Given("I have created an email address") do
  temp_email.visit_temp_email
  temp_email.uncheck_alias
  @email_address = temp_email.find_email.class
end

Given("I click register") do
  demoqa_homepage.click_register_link
end

Given("I enter username and email") do
  temp_email.fill_new_user("spartatest4")
  temp_email.fill_email(@email_address)
  sleep 3
end

Given("I check my email to find password link") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I set a new password and login") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I visit the website") do
  pending # Write code here that turns the phrase above into concrete actions
end
