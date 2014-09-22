class CreateUsers < ActiveRecord::Migration
	def up
		create_table :users do |actual_user|
			actual_user.string :name_user
			actual_user.string :adress_user
			actual_user.string :email_user
			actual_user.string :password_user
			actual_user.references :rating
            actual_user.references :session

            actual_user.timestamps
        end
    end

    def down
    	drop_table :users
    end
end
