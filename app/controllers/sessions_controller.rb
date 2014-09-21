class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email_user(params[:session][:email_user].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user
		else
			# flash[:error] = 'E-mail/Senha inválida!' #Arrumar depois!!
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end


end
