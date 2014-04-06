require 'spec_helper'

describe "a vendor can post a listing" do
  let(:vendor) { FactoryGirl.create(:vendor) }

  it "posts a single listing from a vendor" do
    login(vendor)
    click_link "Add A Listing"

    fill_in :listing_name, with: "Duck Hunters Dream"
    fill_in :listing_listing_pic_url, with: "http://placekitten.com/g/300/300"
    fill_in :listing_description, with: Faker::Lorem.sentence(word_count = 4)
    fill_in :listing_city, with: Faker::Address.city
    fill_in :listing_state, with: Faker::AddressUS.state
    fill_in :listing_address, with: Faker::Address.street_address(include_secondary = false)
    fill_in :listing_zip, with: Faker::AddressUS.zip_code
    fill_in :listing_rate, with: 150.00
    fill_in :listing_quantity, with: 10
    click_button "Add Listing"

    expect(page).to have_content "Duck Hunters Dream"
    expect(page).to have_content "10 People Per Trip"
    expect(page).to have_content "$150.00 Per Person"
  end

  def login(user)
    visit root_path
    click_link "Log In"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in"
  end
end