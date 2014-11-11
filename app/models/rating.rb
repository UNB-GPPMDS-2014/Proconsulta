class Rating < ActiveRecord::Base
	# Adding atributs to Ratings model
	attr_accessible :value_rating, :unity_procon_rating, :descripion_rating

	belongs_to :user
	belongs_to :unity_procon

end