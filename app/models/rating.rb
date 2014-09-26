class Rating < ActiveRecord::Base

	attr_accessible :idRating, :valeu_rating, :descripion_rating

	belongs_to :user

end