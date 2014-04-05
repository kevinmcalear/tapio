# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :booking do
    customer nil
    timeslot nil
    quantity 1
    cost 1
    listing_review "MyString"
  end
end
