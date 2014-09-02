class User < ActiveRecord::Base

	attr_accessible :name_user, :adress_user, :email_user, :password_user, :list_ratings, :session_user

	list_ratings = Array.new

	has_many :ratings

	has_one :session

	validates :email_user, :password_user, presence: true

end