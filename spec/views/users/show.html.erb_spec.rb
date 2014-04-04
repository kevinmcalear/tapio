require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :user_name => "User Name",
      :email => "Email",
      :first_name => "First Name",
      :last_name => "Last Name",
      :password_digest => "Password Digest",
      :phone_number => "Phone Number",
      :profile_pic_url => "Profile Pic Url",
      :description => "MyText",
      :timestamps => "Timestamps",
      :city => "City",
      :state => "State",
      :address => "Address",
      :zip => "Zip",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/User Name/)
    rendered.should match(/Email/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Password Digest/)
    rendered.should match(/Phone Number/)
    rendered.should match(/Profile Pic Url/)
    rendered.should match(/MyText/)
    rendered.should match(/Timestamps/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Address/)
    rendered.should match(/Zip/)
    rendered.should match(/Type/)
  end
end
