class Rating < ActiveRecord::Base

	attr_accessible :value_rating, :unity_procon_rating, :description_rating

	belongs_to :user

end