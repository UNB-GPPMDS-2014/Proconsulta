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
	# Create and associate one user to one id.
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
	# Show one especific user.
	def show
		@user = User.find(params[:id])
	end
	# Edit one user.
	def edit
		@user = User.find(params[:id])
	end
	# Update one edited user.
	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
      		redirect_to @user
    	else
      		render 'edit'
    	end
	end
	# delete one user.
	def destroy
		@user = User.find(params[:id])
		@user.destroy
	end

	private

	def user_params
      params.require(:user).permit(:name_user, :email_user,
                                   :address_user, :password_confirmation, 
                                    :password)
    end
end