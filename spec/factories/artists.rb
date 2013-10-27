# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artist do
    name Forgery(:artist).name
    icon "http://rdio-d.cdn3.rdio.com/artist/no-artist-image-square.png"
  end
end
