class Rating < ActiveRecord::Base
	# Adding atributs to Ratings model
	attr_accessible :value_rating, :description_rating

	belongs_to :user
end