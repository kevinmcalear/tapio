# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :booking do
    association :customer
    association :timeslot
    quantity 14
    cost 245.00
    listing_review "MyString"
  end
end
