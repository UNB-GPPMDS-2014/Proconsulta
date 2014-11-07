class RatingsController < ApplicationController


	def new
		@rating = Rating.new
	end

	def create
		@rating = Rating.new(rating_params)	
    	if @rating.save
      		redirect_to unity_procons_path
    	else
      		render 'new'
    	end
	end

	def rating_params
      params.require(:rating).permit(:value_rating,:unity_procon_rating, :description_rating)
    end

end