class Session < ActiveRecord::Base
	
	attr_accessible :user_session

	belongs_to :user
	
end