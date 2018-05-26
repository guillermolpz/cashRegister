class AddAccountStatusToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :accountStatus, :string
  end
end
