# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    user_name "MyString"
    email "MyString"
    first_name "MyString"
    last_name "MyString"
    password_digest "MyString"
    phone_number "MyString"
    profile_pic_url "MyString"
    description "MyText"
    timestamps "MyString"
    city "MyString"
    state "MyString"
    address "MyString"
    zip "MyString"
    type "Customer"
  end
end
