class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :category_id
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
