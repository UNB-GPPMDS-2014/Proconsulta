class CreateRatings < ActiveRecord::Migration
	def up
		create_table :users do |actual_rating|
			actual_rating.int :idRating
			actual_rating.double :valeu_rating
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