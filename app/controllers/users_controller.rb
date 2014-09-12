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
      		redirect_to ('/users/'+@user.name_user)
    	else
      	render 'new'
    	end
	end

	def show
		@user = User.find_by_name_user!(params[:id])
	end

	def edit
		@user = User.find_by_name_user!(params[:name_user])
	end

	def update
		@user = User.find_by_name_user!(params[:name_user])
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