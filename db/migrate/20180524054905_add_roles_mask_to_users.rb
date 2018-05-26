class AddRolesMaskToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :roles_mask, :integer, comment: '1 => Admin, 2 => Cajero'
  end
end
