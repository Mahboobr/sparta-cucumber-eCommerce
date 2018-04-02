require 'capybara/dsl'

class DemoqaConfirmationPage
  include Capybara::DSL

  CONFIRMATION_TEXT = "Thank you, your purchase is pending. You will be sent an email once the order clears."

  def confirm_text
    CONFIRMATION_TEXT
  end

  def logout
    click_link('Logout')
  end



end
