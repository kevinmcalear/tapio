require 'spec_helper'

describe "a user kill can themselves" do
  let(:user) { FactoryGirl.create(:user) }

  it "commits digital suicide" do
    login(user)
    click_button "Delete My Account"

    expect(page).to have_content "Tapio"
  end
end