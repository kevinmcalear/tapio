require 'spec_helper'

describe "a user can switch account types" do
  vendor = FactoryGirl.create(:vendor) 

  it "changes from vendor to customer" do
    login(vendor)

    expect(page).to have_content "Vendor"
    click_link "Edit My Info"

    choose('vendor_type_customer')
    click_button "Save Changes"
   
    expect(page).to have_content "Customer"
  end

  def login(user)
    visit root_path
    click_link "Log In"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in"
  end
end