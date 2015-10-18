class CreateTblAlbums < ActiveRecord::Migration
  def change
    create_table :tbl_albums do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
