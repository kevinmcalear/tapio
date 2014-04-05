# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :timeslot do
    date { Faker::Time.date }
    start_time "13:00"
    stop_time "15:00"
    booked false
    association :listing
  end
end
