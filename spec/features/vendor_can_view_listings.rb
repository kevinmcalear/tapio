require 'spec_helper'

describe "a vendor can view their listings" do
  vendor = FactoryGirl.create(:vendor) 
  first_listing = FactoryGirl.create(:listing, vendor: vendor) 
  second_listing = FactoryGirl.create(:listing, vendor: vendor)
  third_listing = FactoryGirl.create(:listing, vendor: vendor) 
  
  it "veiws all listings from a vendor" do
    login(vendor)
    click_link "See Your Listings"

    expect(page).to have_content first_listing.name
    expect(page).to have_content second_listing.name
    expect(page).to have_content third_listing.name
  end
end