class Rating < ActiveRecord::Base
	attr_accessible :idRating, :valeu_rating, :user_rating, :unity_procon_rating, :descripion_rating
end