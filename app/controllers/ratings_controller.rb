class RatingsController < ApplicationController

	def index
		@rating = Rating.all
	end

	def new
		@rating = Rating.new
	end

	def create
		@rating = Rating.new(user_params)	
    	if @rating.save
    		 redirect_to :action => :show, :id => @rating.id
    	else
      		render 'new'
    	end
	end

	def show
		@rating = Rating.find(params[:id])
	end

	def edit
		@rating = Rating.find(params[:id])
	end

	def update
		@rating = Rating.find(params[:idRating])
		if @rating.update_attributes(user_params)
      		redirect_to @rating
    	else
      		render 'edit'
    	end
	end

	def destroy
		@rating = Rating.find(params[:id])
        @rating.destroy
	end
end