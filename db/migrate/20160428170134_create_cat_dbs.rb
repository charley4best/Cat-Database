class CreateCatDbs < ActiveRecord::Migration
  def change
    create_table :cat_dbs do |t|
      t.string :name
      t.string :color
      t.string :picture
      t.string :race
      t.string :gender
      t.text :details

      t.timestamps null: false
    end
  end
end
