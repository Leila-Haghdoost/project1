class CreateFavlistsRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :favlists_recipes do |t|
      t.integer :favlist_id
      t.integer :recipe_id
    end
  end
end
