# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :listing do
    name { Faker::Lorem.sentence(word_count = 1) }
    listing_pic_url "http://placekitten.com/g/300/300"
    description { Faker::Lorem.sentence(word_count = 4) }
    city { Faker::Address.city }
    state { Faker::AddressUS.state }
    address { Faker::Address.street_address(include_secondary = false) }
    zip { Faker::AddressUS.zip_code }
    rate 20.00
    quantity 15
    association :vendor
  end
end
