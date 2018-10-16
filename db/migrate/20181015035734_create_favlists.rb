class CreateFavlists < ActiveRecord::Migration[5.2]
  def change
    create_table :favlists do |t|
      t.text :name

      t.timestamps
    end
  end
end
