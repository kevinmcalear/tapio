require 'spec_helper'

describe "a user can log in" do
  let(:user) { FactoryGirl.create(:user) }

  it "logs In" do
    login(user)
    expect(page).to have_content "#{user.first_name}"
  end
end