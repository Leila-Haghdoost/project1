class AddUserIdToFavlists < ActiveRecord::Migration[5.2]
  def change
    add_column :favlists, :user_id, :integer
  end
end
