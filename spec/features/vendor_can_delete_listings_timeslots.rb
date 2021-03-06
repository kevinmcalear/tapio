require 'spec_helper'

describe "a vendor delete timeslots from their listings" do
  let(:timeslot) { FactoryGirl.create(:timeslot) }

  it "deletes a timeslot from a listing" do
    login(timeslot.listing.vendor)


    click_link "See Your Listings"
    click_link timeslot.listing.name
    click_link "See Available Timeslots"
    click_button "Delete"

    expect(page).to have_no_content  "#{timeslot.date} : #{timeslot.start_time} - #{timeslot.stop_time}"
  end
end