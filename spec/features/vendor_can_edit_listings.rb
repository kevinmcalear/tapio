require 'spec_helper'

describe "a vendor can view their listings" do
  vendor = FactoryGirl.create(:vendor) 
  first_listing = FactoryGirl.create(:listing, vendor: vendor) 

  it "veiws all listings from a vendor" do
    login(vendor)

    click_link "See Your Listings"
    click_link "Edit"

    fill_in "listing_name", with: "Awesome Shtuffff"
    click_button "Update Listing"

    expect(page).to have_content "Awesome Shtuffff"
  end

  def login(user)
    visit root_path
    click_link "Log In"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in"
  end
end