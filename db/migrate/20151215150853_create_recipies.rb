class CreateRecipies < ActiveRecord::Migration
  def change
    create_table :recipies do |t|
      t.string :name
      t.text :description
      t.text :instructions
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
