class SessionsController < ApplicationController

	def new
	end

	#  Log in
	def create
		user = User.find_by_email_user(params[:session][:email_user].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user
			flash[:sucess] = "Logado com exito!"
		else
			flash.now[:error] = "Combinacao invalida de email e senha."
      			render 'new'
		end
	end

	# Sign out
	def destroy
		flash[:sucess] = "Deslogado com exito."
		sign_out
		redirect_to root_url
	end


end
