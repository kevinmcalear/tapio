require 'spec_helper'

describe "a customer can kill themselves" do
  let(:customer) { FactoryGirl.create(:customer) }

  it "commits digital suicide" do
    login(customer)
    click_button "Delete My Account"

    expect(page).to have_content "Tapio"
  end
end