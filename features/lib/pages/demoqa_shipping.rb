require 'capybara/dsl'

class DemoqaShippingPage
  include Capybara::DSL

  COUNTRY = 'country'
  COUNTY = "collected_data[15]"
  EMAIL = "collected_data[9]"
  CALCULATE_BUTTON_VALUE = "Calculate"
  FIRST_NAME = "collected_data[2]"
  LAST_NAME = "collected_data[3]"
  ADDRESS = "collected_data[4]"
  CITY = "collected_data[5]"
  COUNTY_2ND = "collected_data[6]"
  POST_CODE = "collected_data[8]"
  PHONE_NUMBER = "collected_data[18]"
  SAME_AS_BILLING = "shippingSameBilling"
  PURCHASE = "Purchase"

  def current_country
    select('United Kingdom', :from => COUNTRY )
  end

  def current_county(input)
    fill_in(COUNTY, with: input)
  end

  def enter_email(input)
    fill_in(EMAIL, with: input)
  end

  def click_calculate_shipping
    find_button(CALCULATE_BUTTON_VALUE).click
  end

  def enter_first_name(input)
    fill_in(FIRST_NAME, with: input)
  end

  def enter_last_name(input)
    fill_in(LAST_NAME, with: input)
  end

  def enter_address(input)
    fill_in(ADDRESS, with: input)
  end

  def enter_city(input)
    fill_in(CITY, with: input)
  end

  def enter_county_second(input)
    fill_in(COUNTY_2ND, with: input)
  end

  def enter_post_code(input)
    fill_in(POST_CODE, with: input)
  end

  def enter_phone(input)
    fill_in(PHONE_NUMBER, with: input)
  end

  def check_same_as_billing
    check(SAME_AS_BILLING)
  end

  def click_purchase
    click_button(PURCHASE)
  end

end
