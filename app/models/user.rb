class User < ActiveRecord::Base
	attr_accessible :email_user, :name_user, :password, :password_confirmation, :adress_user
	has_secure_password
#	list_ratings = Array.new

	has_many :ratings
	# has_secure_password
	has_one :session


	validates :password, presence: true
	validates :name_user, presence: true, length: { maximum:50 }
	validates :adress_user, presence: true, length: { maximum:99 }
	validates :email_user, presence: true, length: { maximum:70 }
 	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email_user, presence: true, format: { with: VALID_EMAIL_REGEX },
  			   uniqueness: { case_sensitive:false }
  	validates :password, length: { minimum: 6}


  	  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  	private 

  	def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end
end