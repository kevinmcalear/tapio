# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    association :customer
    association :vendor
    title { Faker::Lorem.sentence(word_count = 1) }
    score 3
    review { Faker::Lorem.sentence(word_count = 5) }
  end
end
