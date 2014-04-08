require 'spec_helper'

describe "a vendor can edit their listings" do
  vendor = FactoryGirl.create(:vendor) 
  first_listing = FactoryGirl.create(:listing, vendor: vendor) 

  it "edits a listing" do
    login(vendor)

    click_link "See Your Listings"
    click_link "Edit"

    fill_in "listing_name", with: "Awesome Shtuffff"
    click_button "Update Listing"

    expect(page).to have_content "Awesome Shtuffff"
  end
end