require 'spec_helper'

describe "a customer can book a listing's timeslot" do
  let(:customer) { FactoryGirl.create(:customer) }
  timeslot = FactoryGirl.create(:timeslot)

  it "browses the listings" do
    login(customer)
    click_link "Book A Listing"
    click_link timeslot.listing.name

    expect(page).to have_content timeslot.listing.name
    click_link "Book"

    fill_in 
  end

  def login(user)
    visit root_path
    click_link "Log In"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in"
  end
end