class CreateTblMusics < ActiveRecord::Migration
  def change
    create_table :tbl_musics do |t|
      t.string :title
      t.string :artist
      t.integer :year
      t.integer :genre_id
      t.integer :album_id

      t.timestamps null: false
    end
  end
end
