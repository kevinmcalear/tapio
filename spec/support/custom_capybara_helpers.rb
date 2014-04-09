module CustomCapybaraHelpers
  def login(user)
    visit "/login"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in"
  end
end