require 'spec_helper'

describe "a customer can see all listings" do
  let(:customer) { FactoryGirl.create(:customer) }
  listing = FactoryGirl.create(:listing)

  it "browses the listings" do
    login(customer)
    click_link "Book A Listing"

    expect(page).to have_content listing.name
  end
end