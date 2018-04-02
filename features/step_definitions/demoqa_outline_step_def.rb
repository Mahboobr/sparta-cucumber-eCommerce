Given("I access the DemoQA home page") do
  demoqa_homepage.visit_home
  sleep 2
end

And("I select the click the my account button") do
  demoqa_homepage.my_account_click
  sleep 2
end

And("I select input correct username and password, and then login") do
  demoqa_login.fill_username("mabs")
  demoqa_login.fill_password("Test123456789")
  demoqa_login.click_login
  sleep 2
end

And("I select a blog post") do
  demoqa_my_account.click_more_details
  sleep 2
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
  # demoqa_checkout.change_quantity_row_1(32)
  # demoqa_checkout.update_quantity
  # sleep 2
  demoqa_checkout.continue_checkout
  sleep 2
end

And("I fill out shipping details") do
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
end
