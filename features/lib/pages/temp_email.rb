require 'capybara/dsl'

class TempEmail

  include Capybara::DSL

  HOMEPAGE_URL = 'https://www.guerrillamail.com/#'


  def visit_temp_email
    visit(HOMEPAGE_URL)
  end

  def find_email
   find("#email-widget")["value"]
  end

  def uncheck_alias
    uncheck("alias")
  end

  def fill_new_user(user)
    fill_in("user_login", with: user )
  end

  def fill_email(email)
    fill_in("user_email", with: email)
    # fill_in("user_email", with: @email_address)
  end

end
