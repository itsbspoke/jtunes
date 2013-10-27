class Song < ActiveRecord::Base
  belongs_to :album
  belongs_to :artist

  def self.random
    where("random() < 0.01").first
  end
end
