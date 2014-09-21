class UsersController < ApplicationController

	def allusers
		@users = User.all
	end

	def index
		@user = User.all
	end

	def new
		@user = User.new
	end	

	def create
		@user = User.new(user_params)	
    	if @user.save
    		sign_in @user
    		# flash[:sucess] = "Seja bem-vindo!"
      		 redirect_to :action => :show, :id => @user.id
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
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
      		redirect_to @user
    	else
      		render 'edit'
    	end
	end
	
	def destroy
		@user = User.find(params[:id])
		@user.destroy
	end

	private

	def user_params
      params.require(:user).permit(:name_user, :email_user,
                                   :adress_user, :password_confirmation, 
                                    :password)
    end
end