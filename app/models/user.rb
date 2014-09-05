class User < ActiveRecord::Base

	attr_accessible :name_user, :adress_user, :email_user, :password_user, :list_ratings, :session_user

#	list_ratings = Array.new

	has_many :ratings

	has_one :session

	validates :password_user, presence: true
	validates :name_user, presence: true, length: { maximum:50 }
	validates :adress_user, presence: true, length: { maximum:99 }
	validates :email_user, presence: true, length: { maximum:70 }
 	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email_user, presence: true, format: { with: VALID_EMAIL_REGEX },
  			   uniqueness: { case_sensitive:false }
  	validates :password_user, length: { minimum: 6}

end