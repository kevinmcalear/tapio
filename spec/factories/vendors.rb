# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vendor do
    user_name { Faker::Internet.user_name }
    email { Faker::Internet.email }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    password "test"
    password_confirmation "test"
    phone_number { Faker::PhoneNumber.phone_number }
    profile_pic_url "http://placekitten.com/g/300/300"
    description { Faker::Lorem.sentence(word_count = 4) }
    city { Faker::Address.city}
    state { Faker::AddressUS.state }
    address { Faker::Address.street_address(include_secondary = false) }
    zip { Faker::AddressUS.zip_code }
    type "Vendor"
  end
end
