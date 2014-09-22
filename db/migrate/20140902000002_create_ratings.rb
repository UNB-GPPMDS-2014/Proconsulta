class CreateRatings < ActiveRecord::Migration
	def up
		create_table :ratings do |actual_rating|
			actual_rating.integer :idRating
			actual_rating.float :valeu_rating
			actual_rating.references :user
			#actual_rating.references :unity_procon
			actual_rating.string :descripion_rating

            actual_rating.timestamps
        end
    end

    def down
    	drop_table :ratings
    end
end