class CreateJoinTableRecipieIngredient < ActiveRecord::Migration
  def change
    create_join_table :recipies, :ingredients do |t|
      # t.index [:recipie_id, :ingredient_id]
      # t.index [:ingredient_id, :recipie_id]
    end
  end
end
