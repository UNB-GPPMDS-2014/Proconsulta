class Session < ActiveRecord::Base
	
	attr_accessible :user_session

	has_one :user
	
end