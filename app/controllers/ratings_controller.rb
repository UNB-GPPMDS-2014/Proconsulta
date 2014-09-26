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
    		 redirect_to :action => :show, :idRating => @rating.id
    	else
      		render 'new'
    	end
	end

	def show
		@rating = Rating.find(params[:idRating])
	end

	def edit
		@rating = Rating.find(params[:idRating])
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
		@rating = Rating.find(params[:idRating])
        @rating.destroy
	end

	private
		def rating_params
	      params.require(:rating).permit(:idRating, :value_rating, :user_rating, 
	      	             :unity_procon_rating, :descripion_rating)
	    end

end