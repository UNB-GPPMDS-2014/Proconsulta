module SessionsHelper

	def sign_in(user)
		cookies.permanent[:remember_token] = user.remember_token
		self.current_user = user
	end

	def simple_sign_in(user)
		self.current_user = user
	end

	def signed_in?
		!current_user.nil?
	end

	def current_user
		@current_user ||= User.find_by_remember_token(cookies[:remember_token])
	end

	def current_user=(user)
		@current_user = user
	end

	def sign_out
		self.current_user = nil
		cookies.delete(:remember_token)
	end

	def current_uf
		current_user.address_user
	end

	def current_uf=(address_user)
		current_uf = address_user
	end
end
