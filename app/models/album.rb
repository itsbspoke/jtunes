class Album < ActiveRecord::Base
  belongs_to :artist #"_id" in the db/schema or migration
  has_many :songs

  def self.new_releases
    order("release_date desc").limit(5)
  end
end
