require 'spec_helper'

describe "a user can log out" do
  let(:user) { FactoryGirl.create(:user) }

  it "logs Out" do
    login(user)
    click_link "Log out #{user.first_name}"
    expect(page).to have_content("Log In")
  end

  def login(user)
    visit root_path
    click_link "Log In"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in"
  end
end