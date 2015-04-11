class AddPasswordConfirmationToUser < ActiveRecord::Migration
  def change
    add_column :users, :confirm_password, :string
  end
end
