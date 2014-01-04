# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :building do
    street_address "33 Harrison Ave"
    city "Boston"
    state "MA"
    postal_code 02201
    description "Launch Academy"
  end
end
