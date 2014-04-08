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
end