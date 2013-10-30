class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :album_id, :null => false
      t.integer :artist_id, :null => false
      t.string :name
      t.integer :length_in_seconds, :null => false

      t.timestamps
    end
  end
end
