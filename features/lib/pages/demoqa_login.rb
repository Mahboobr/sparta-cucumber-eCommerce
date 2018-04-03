require 'capybara/dsl'

class DemoqaLogInPage
  include Capybara::DSL

  USERNAME_ID = "log"
  PASSWORD_ID = "pwd"
  LOGIN_BUTTON_VALUE = "Login"

  def fill_username(username)
    fill_in(USERNAME_ID, with: username)
  end

  def fill_password(password)
    fill_in(PASSWORD_ID, with: password)
  end

  def click_login
    # find_button(LOGIN_BUTTON_VALUE).click
    click_button('Login »')
  end


end
