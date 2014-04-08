require 'spec_helper'

describe "a vendor can add timeslots to their listings" do
  let(:listing) { FactoryGirl.create(:listing) }
  
  it "add a timeslot to a listing" do
    login(listing.vendor)

    click_link "See Your Listings"
    click_link listing.name
    click_link "See Available Timeslots"
    click_link "Add Timeslots"

    fill_in "timeslot_date", with: "04-24-2014"
    fill_in "timeslot_start_time", with: "12:00"
    fill_in "timeslot_stop_time", with: "14:00"
    choose "timeslot_booked_false"
    click_button "Add Slots"

    expect(page).to have_content listing.timeslots.last.date
  end
end