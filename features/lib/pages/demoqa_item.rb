require 'capybara/dsl'

class DemoqaItemPage
  include Capybara::DSL

  def click_add_to_cart
    click_button('Add To Cart')
  end

  def go_to_checkout
    click_link('Checkout')
  end

end
