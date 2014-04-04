require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :user_name => "MyString",
      :email => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :password_digest => "MyString",
      :phone_number => "MyString",
      :profile_pic_url => "MyString",
      :description => "MyText",
      :timestamps => "MyString",
      :city => "MyString",
      :state => "MyString",
      :address => "MyString",
      :zip => "MyString",
      :type => ""
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_user_name[name=?]", "user[user_name]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_first_name[name=?]", "user[first_name]"
      assert_select "input#user_last_name[name=?]", "user[last_name]"
      assert_select "input#user_password_digest[name=?]", "user[password_digest]"
      assert_select "input#user_phone_number[name=?]", "user[phone_number]"
      assert_select "input#user_profile_pic_url[name=?]", "user[profile_pic_url]"
      assert_select "textarea#user_description[name=?]", "user[description]"
      assert_select "input#user_timestamps[name=?]", "user[timestamps]"
      assert_select "input#user_city[name=?]", "user[city]"
      assert_select "input#user_state[name=?]", "user[state]"
      assert_select "input#user_address[name=?]", "user[address]"
      assert_select "input#user_zip[name=?]", "user[zip]"
      assert_select "input#user_type[name=?]", "user[type]"
    end
  end
end
