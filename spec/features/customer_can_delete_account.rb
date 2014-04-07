require 'spec_helper'

describe "a customer can kill themselves" do
  let(:customer) { FactoryGirl.create(:customer) }

  it "commits digital suicide" do
    login(customer)
    click_button "Delete My Account"

    expect(page).to have_content "Tapio"
  end

  def login(user)
    visit root_path
    click_link "Log In"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in"
  end
end