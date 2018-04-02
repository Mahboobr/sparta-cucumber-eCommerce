require 'capybara/dsl'

class DemoqaItemPage
  include Capybara::DSL

  def click_add_to_cart
    click_button('Add To Cart')
  end

  def go_to_checkout
    click_link('Checkout')
  end

  def click_product_image
    find("img[class='product_image']").click
  end

  def close_product_image
    find("a[class='pp_close']").click
  end

end
