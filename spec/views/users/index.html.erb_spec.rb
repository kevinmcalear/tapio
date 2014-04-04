require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
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
      ),
      stub_model(User,
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
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Profile Pic Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Timestamps".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
