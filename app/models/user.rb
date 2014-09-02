class User < ActiveRecord::Base
	attr_accessible :name_user, :adress_user, :email_user, :password_user
end