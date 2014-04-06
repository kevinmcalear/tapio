require 'spec_helper'

describe "a vendor can log in" do
  let(:vendor) { FactoryGirl.create(:vendor) }

  it "logs In" do
    login(vendor)
    expect(page).to have_content "#{vendor.first_name}"
    expect(page).to have_content "Add A Listing"
    expect(page).to have_content "See Your Listings"
  end

  def login(user)
    visit root_path
    click_link "Log In"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in"
  end
end