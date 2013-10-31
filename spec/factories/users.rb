# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :user do
    email { Forgery(:internet).email_address }
    password "12345678"
    birth_date { rand(365*35).days.ago }
  end
end
