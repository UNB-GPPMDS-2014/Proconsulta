class User < ActiveRecord::Base
	attr_accessible :email_user, :name_user, :password, :password_confirmation, :address_user
	has_secure_password
	after_validation { self.errors.messages.delete(:password_digest) }
	before_save { |user| user.email_user = email_user.downcase }
	before_save :create_remember_token
#	list_ratings = Array.new
	has_many :ratings


	validates :name_user, presence: true, length: { maximum:50 }
	validates :address_user, presence: true, length: { maximum:2 }
	validates :email_user, length: { maximum:70 }
 	valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email_user, format: { with: valid_email_regex },
  			   uniqueness: { case_sensitive:false }
  	validates :password, length: { minimum: 6}, allow_blank: true


	  def User.new_remember_token
	    SecureRandom.urlsafe_base64
	  end

	  def User.digest(token)
	    Digest::SHA1.hexdigest(token.to_s)
	  end

  	private

  	def create_remember_token
	      self.remember_token = SecureRandom.urlsafe_base64
      end
end
