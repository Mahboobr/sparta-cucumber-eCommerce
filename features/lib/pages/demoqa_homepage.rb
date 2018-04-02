require 'capybara/dsl'

class DemoqaHomepage
  include Capybara::DSL

  HOMEPAGE_URL = 'http://store.demoqa.com/'

  SLIDER_IMAGE = "div[class='featured_image']"

  def visit_home
    visit(HOMEPAGE_URL)
  end

  def my_account_click
    click_link('My Account')
  end

  def slider_image_click
    find(SLIDER_IMAGE).click
  end

  def fill_search(search)
    fill_in("s", with: search).send_keys :enter
  end

end
