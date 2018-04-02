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

end
