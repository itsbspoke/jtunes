class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :artist_id, :null => false
      t.string :name
      t.string :icon
      t.date :release_date
      t.boolean :clean, :null => false

      t.timestamps
    end
  end
end
