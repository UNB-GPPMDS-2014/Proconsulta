class RemovePasswordConfirmationFromUsers < ActiveRecord::Migration
	def up
		remove_column :users, :password_confirmation
		remove_column :users, :password_user
	end
	def down
		add_column :users, :password_confirmation, :string
		add_column :users, :password_user, :string
	end
end