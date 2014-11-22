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
			flash[:sucess] = "Seja bem-vindo!"
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
		if !signed_in? || current_user != @user
			redirect_to root_path
			flash[:danger] = "Esta conta nao e sua."
		end
	end

	# Update one edited user.
	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			flash[:sucess] = "Usuario editado com exito!"
			sign_in(@user)
			redirect_to @user
		else
			render 'edit'
		end
	end

	# delete one user.
	def destroy
		@user = User.find(params[:id])
		if current_user != @user
			redirect_to root_path
			flash[:error] = "Esta conta nao e sua."
		else
			@user.destroy
			redirect_to root_path
			flash[:sucess] = "Usuario excluido com exito."
		end
	end

  private

	def user_params
	params.require(:user).permit(:name_user, :email_user,
						:address_user, :password_confirmation,
						:password)
	end
end
