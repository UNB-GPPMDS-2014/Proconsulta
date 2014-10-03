class RemoveValeuFromRatings < ActiveRecord::Migration
	def up
		remove_column :ratings, :valeu_rating
		remove_column :ratings, :idRating
		remove_column :ratings, :descripion_rating
	end
	def down
		add_column :ratings, :value_rating, :float
		add_column :ratings, :description_rating, :string
	end
end
