require 'spec_helper'

describe "a vendor can log in" do
  let(:vendor) { FactoryGirl.create(:vendor) }

  it "logs In" do
    login(vendor)
    expect(page).to have_content "#{vendor.first_name}"
    expect(page).to have_content "Add A Listing"
    expect(page).to have_content "See Your Listings"
  end
end