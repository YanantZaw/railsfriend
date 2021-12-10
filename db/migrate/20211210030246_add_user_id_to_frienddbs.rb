class AddUserIdToFrienddbs < ActiveRecord::Migration[6.1]
  def change
    add_column :frienddbs, :user_id, :integer
    add_index :frienddbs, :user_id
  end
end
