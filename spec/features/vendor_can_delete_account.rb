require 'spec_helper'

describe "a vendor can kill themselves" do
  let(:vendor) { FactoryGirl.create(:vendor) }

  it "commits digital suicide" do
    login(vendor)
    click_button "Delete My Account"

    expect(page).to have_content "Tapio"
  end
end