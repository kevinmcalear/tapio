require 'spec_helper'

describe "a customer can view a single listing" do
  let(:customer) { FactoryGirl.create(:customer) }
  timeslot = FactoryGirl.create(:timeslot)

  it "views a listing" do
    login(customer)
    click_link "Book A Listing"
    click_link timeslot.listing.name

    expect(page).to have_content timeslot.listing.name
  end
end