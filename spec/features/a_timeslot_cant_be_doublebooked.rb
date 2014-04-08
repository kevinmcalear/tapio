require 'spec_helper'

describe "a customer can't doublebook a listing's timeslot" do
  let(:customer) { FactoryGirl.create(:customer) }
  timeslot = FactoryGirl.create(:timeslot)

  it "removes any booked timeslot" do
    login(customer)
    click_link "Book A Listing"
    click_link timeslot.listing.name

    expect(page).to have_content timeslot.listing.name

    click_button "Book"

    expect(page).to have_content timeslot.bookings.last.cost

    visit listing_path(timeslot.listing)

    expect(page).to have_no_content timeslot.date
  end
end