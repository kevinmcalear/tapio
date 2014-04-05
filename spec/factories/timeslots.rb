# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :timeslot do
    date "MyString"
    start_time "MyString"
    stop_time "MyString"
    booked false
    listing nil
  end
end
