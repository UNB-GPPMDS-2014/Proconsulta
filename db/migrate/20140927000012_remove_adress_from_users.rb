class RemoveAdressFromUsers < ActiveRecord::Migration
	def up
		remove_column :users, :adress_user
	end
	def down
		add_column :users, :adress_user, :string
	end
end