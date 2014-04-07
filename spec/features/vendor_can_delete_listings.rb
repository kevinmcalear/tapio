require 'spec_helper'

describe "a vendor can delete their listings" do
  vendor = FactoryGirl.create(:vendor) 
  first_listing = FactoryGirl.create(:listing, vendor: vendor) 

  it "deletes a listing" do
    login(vendor)

    click_link "See Your Listings"
    click_button "Delete"

    expect(page).to have_no_content first_listing.name
    
    visit vendor_listings_path(vendor)
    expect(page).to have_no_content first_listing.name
  end

  def login(user)
    visit root_path
    click_link "Log In"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in"
  end
end