# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :album do
    artist 
    name Forgery(:album).name
    icon "MyString"
    release_date rand(1000).weeks.ago(Date.parse("2013-10-22"))
    clean false
  end
end
