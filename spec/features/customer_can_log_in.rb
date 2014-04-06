require 'spec_helper'

describe "a customer can log in" do
  let(:customer) { FactoryGirl.create(:customer) }

  it "logs In" do
    login(customer)
    expect(page).to have_content "#{customer.first_name}"
    expect(page).to have_content "Book A Listing"
    expect(page).to have_content "See Your Past Bookings"
  end

  def login(user)
    visit root_path
    click_link "Log In"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in"
  end
end