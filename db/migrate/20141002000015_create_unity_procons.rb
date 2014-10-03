class CreateUnityProcons < ActiveRecord::Migration
	def change
		create_table :unity_procons do |f|
			f.string :address_unity_procon
			f.string :name_coordinator_unity_procon
			f.string :list_ratings_unity_procon
			f.string :uf_procon
			f.string :email_unity_procon
			f.string :list_phones

            f.timestamps
        end
    end
end