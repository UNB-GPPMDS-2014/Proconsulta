class AddDescriptionToRatings < ActiveRecord::Migration
	def change
		add_column :ratings, :description_rating, :string
		add_column :ratings, :value_rating, :float
	end
end
