require 'capybara/dsl'

class DemoqaHomepage
  include Capybara::DSL

  HOMEPAGE_URL = 'http://store.demoqa.com/'


  def visit_home
    visit(HOMEPAGE_URL)
  end

end