require 'spec_helper'

describe "a customer can see all listings" do
  let(:customer) { FactoryGirl.create(:customer) }
  listing = FactoryGirl.create(:listing)

  it "browses the listings" do
    login(customer)
    click_link "Book A Listing"

    expect(page).to have_content listing.name
  end

  def login(user)
    visit root_path
    click_link "Log In"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in"
  end
end