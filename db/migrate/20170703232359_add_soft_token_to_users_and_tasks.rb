class AddSoftTokenToUsersAndTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :soft_token, :string
    add_column :tasks, :soft_token, :string
  end
end
