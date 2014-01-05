# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    first_name "Kevin"
    last_name "Kwon"
    email "kwon@email.com"
  end
end
