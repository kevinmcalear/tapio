# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    customer nil
    vendor nil
    title "MyString"
    score 1
    review "MyText"
  end
end
