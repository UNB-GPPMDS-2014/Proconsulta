class RatingsController < ApplicationController
	
	def index
		@rating = Rating.create
	end
	
	def show
	  rating = Rating.find( params[:rating_id])
	  unity_procon = UnityProcon.find( params[:unity_procon_id])
	end

    def add_rating
		puts params
		rating = Rating.find( params[:rating_id])
		unity_procon = UnityProcon.find( params[:unity_procon_id] )

		unless rating.blank? 
			unity_procon.ratings << rating
			if (unity_procon.save)	
				flash[:notice] = ""
			else
				flash[:notice] = "ERRO!"
			end
		end
		redirect_to unity_procon
	end

end