class Album < ActiveRecord::Base
  belongs_to :artist #"_id" in the db/schema or migration
  has_many :songs

  # def self.new_releases
  #   order("release_date desc").limit(5)
  # end

  def self.new_releases_for(user)
    if user && user.is_old_enough
      order("release_date desc").limit(5)
    else
      order("release_date desc").limit(5).where(:clean)
    end
  end
end
