class CreateTblGenres < ActiveRecord::Migration
  def change
    create_table :tbl_genres do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
