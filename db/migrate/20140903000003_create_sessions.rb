class CreateSessions < ActiveRecord::Migration
	def up
		create_table :sessions do |actual_sessions|

			actual_sessions.references :user

            actual_sessions.timestamps
        end
    end

    def down
    	drop_table :sessions
    end
end