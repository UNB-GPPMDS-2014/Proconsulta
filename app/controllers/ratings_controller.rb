class RatingsController < ApplicationController
	
	def index # @List all Ratings
		@rating = Rating.all
	end
	 
	def new # @Instantiate one rating
		@rating = Rating.new
	end
	
	def create # @Create one rating
		@rating = Rating.new(user_params)	
    	if @rating.save
    		 redirect_to :action => :show, :id => @rating.id
    	else
      		render 'new'
    	end
	end
	
	def show # @List one rating associated with the id given.
		@rating = Rating.find(params[:id])
	end
	
	def edit # @Edit one rating.
		@rating = Rating.find(params[:id])
	end
	
	def update # @Update one edited id.
		@rating = Rating.find(params[:idRating])
		if @rating.update_attributes(user_params)
      		redirect_to @rating
    	else
      		render 'edit'
    	end
	end
	
	def destroy # @Erase one rating.
		@rating = Rating.find(params[:id])
        @rating.destroy
	end
end