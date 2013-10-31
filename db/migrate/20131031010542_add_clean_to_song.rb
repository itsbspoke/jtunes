class AddCleanToSong < ActiveRecord::Migration
  def up
    add_column :songs, :clean, :boolean
    Song.reset_column_information
    Song.includes(:album).each do |song|
      song.clean = song.album.clean
      song.save
    end
    change_column :songs, :clean, :boolean, :null => :false
  end
  def down
    remove_column :songs, :clean
  end
end
