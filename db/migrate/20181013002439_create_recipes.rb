class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.text :name
      t.text :description
      t.integer :serves
      t.text :prep
      t.text :cook
      t.text :ingredients
      t.text :instruction
      t.text :image
      t.integer :cuisine_id
      t.timestamps
    end
  end
end
