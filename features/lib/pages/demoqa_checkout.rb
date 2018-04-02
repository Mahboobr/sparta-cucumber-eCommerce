require 'capybara/dsl'

class DemoqaCheckoutPage
  include Capybara::DSL

  QUANTITY = "quantity"
  UPDATE_BTN_VALUE = "Update"
  CONTINUE = "Continue"

  def change_quantity_row_1(num)
    fill_in(QUANTITY, with: num)
    # grabs first quantity box only
  end

  def update_quantity
    click_button(UPDATE_BTN_VALUE)
  end

  def continue_checkout
    click_link(CONTINUE)
  end

  def change_quantity_row_2
    find(:xpath, '//*[@id="checkout_page_container"]/div[1]/table/tbody/tr[3]/td[3]/form/input[1]').text
  end

end
