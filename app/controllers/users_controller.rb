class UsersController < ApplicationController

	def index
		@user = User.last
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)	
    	if @user.save
      		redirect_to @user
    	else
      	render 'new'
    	end
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
	end

	def destroy
	end

	private

	def user_params
      params.require(:user).permit(:name_user, :email_user,
                                   :adress_user, :password_confirmation, 
                                    :password)
    end
end