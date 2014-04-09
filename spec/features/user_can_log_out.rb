require 'spec_helper'

describe "a user can log out" do
  let(:user) { FactoryGirl.create(:user) }

  it "logs Out" do
    login(user)
    click_link "Log out #{user.first_name}"
    expect(page).to have_content("Login")
  end
end