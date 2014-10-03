class AddAddressToUsers < ActiveRecord::Migration
	def change
		add_column :users, :address_user, :string
		add_index :users, :address_user
	end
end
