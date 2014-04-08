require 'spec_helper'

describe "a vendor can edit their listing's timeslots" do
  vendor = FactoryGirl.create(:vendor) 
  listing = FactoryGirl.create(:listing, vendor: vendor) 
  timeslot = FactoryGirl.create(:timeslot, listing: listing)

  it "edits a timeslot" do
    login(vendor)

    click_link "See Your Listings"
    click_link listing.name

    click_link "See Available Timeslots"
    click_link "Edit"

    fill_in "timeslot_date", with: "2014-04-23"
    click_button "Update Slot"
 
    expect(page).to have_content "2014-04-23 : #{timeslot.start_time} - #{timeslot.stop_time}"
  end
end