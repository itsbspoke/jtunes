# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :album do
    artist
    name { Forgery(:album).name }
    icon "http://rdio-b.cdn3.rdio.com/album/1/f/8/000000000026b8f1/2/square-600.jpg"
    release_date { rand(1000).weeks.ago(Date.parse("2013-10-22")) }
    clean { rand(2)==1 } # coin flip
  end
end
