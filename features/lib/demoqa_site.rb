require_relative 'pages/demoqa_homepage'
require_relative 'pages/demoqa_login'
require_relative 'pages/demoqa_myaccount'

module DemoqaSite

  def demoqa_homepage
    DemoqaHomepage.new
  end

  def demoqa_login
    DemoqaLogInPage.new
  end

  def demoqa_my_account
    DemoqaMyAccountPage.new
  end

  def demoqa_item_page
    DemoqaItemPage.new
  end

  def demoqa_checkout
    DemoqaCheckoutPage.new
  end

  def demoqa_shipping
    DemoqaShippingPage.new
  end

  def demoqa_confirm
    DemoqaConfirmationPage.new
  end

end
