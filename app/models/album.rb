class Album < ActiveRecord::Base
  belongs_to :artist #"_id" in the db/schema or migration
  has_many :songs
end
