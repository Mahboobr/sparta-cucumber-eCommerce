require 'capybara/dsl'

class DemoqaMyAccountPage
  include Capybara::DSL

  MORE_DETAILS = "More Details"
  IPHONE_5 = "iPhone 5"

  def click_more_details
    find_link(MORE_DETAILS).click
    # only grabs first link atm
  end

  def click_iphone
    click_link(IPHONE_5)
  end

  def go_to_your_details
    click_link('Your Details')
  end

  def save_profile
    click_button('Save Profile')
  end

  def hover_product_category
    find("li[id='menu-item-33']").hover
  end

  def click_macbook_dropdown
    find("li[id='menu-item-39']").click
  end

  def change_view
    find("a[class='grid ']").click
  end

end
