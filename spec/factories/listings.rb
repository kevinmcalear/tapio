# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :listing do
    name "MyString"
    listing_pic_url "MyString"
    description "MyText"
    timestamps "MyString"
    city "MyString"
    state "MyString"
    address "MyString"
    zip "MyString"
    rate 1
    quantity 1
    vendor nil
  end
end
