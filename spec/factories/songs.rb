# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :song do
    album
    artist
    name { Forgery(:song).name }
    length_in_seconds { rand(720) }
  end
end
