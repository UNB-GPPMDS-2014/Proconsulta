class RatingsController < ApplicationController
	# List all Ratings
	def index
		@rating = Rating.all
	end
	# Create one rating
	def new
		@rating = Rating.new
	end
	# 
	def create
		@rating = Rating.new(user_params)	
    	if @rating.save
    		 redirect_to :action => :show, :id => @rating.id
    	else
      		render 'new'
    	end
	end
	# List one rating associated with one id.
	def show
		@rating = Rating.find(params[:id])
	end
	# Edit one rating.
	def edit
		@rating = Rating.find(params[:id])
	end
	# Update one edited id.
	def update
		@rating = Rating.find(params[:idRating])
		if @rating.update_attributes(user_params)
      		redirect_to @rating
    	else
      		render 'edit'
    	end
	end
	# Erase one rating.
	def destroy
		@rating = Rating.find(params[:id])
        @rating.destroy
	end
end